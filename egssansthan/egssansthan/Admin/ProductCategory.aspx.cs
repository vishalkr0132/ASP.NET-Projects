using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_ProductCategory : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["hms"].ConnectionString);
    SqlComan cls = new SqlComan();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getcategory();
        }
    }

    private void getcategory()
    {
        DataTable dt = cls.GetDataTable("select * from ProductCategory order by id desc");
        if (dt.Rows.Count > 0)
        {
            gridvoperator.DataSource = dt;
            gridvoperator.DataBind();
        }
    }
    protected void gridvoperator_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        try
        {
            int Id = Convert.ToInt32(gridvoperator.DataKeys[e.RowIndex].Value.ToString());
            TextBox txtPName = ((TextBox)gridvoperator.Rows[e.RowIndex].FindControl("txtPName") as TextBox);
            cn.Open();
            string qry = "update dbo.ProductCategory set ProductType=@a where id=" + Id;

            SqlParameter ProductType = new SqlParameter("@a", txtPName.Text.Trim());

            cls.ExecuteSql(qry, new SqlParameter[] { ProductType });
            gridvoperator.EditIndex = -1;
            getcategory();
        }
        catch
        {
            ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "alert('Updation Failed');", true);
        }

    }
    protected void gridvoperator_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            int id = Convert.ToInt32(gridvoperator.DataKeys[e.RowIndex].Values["id"].ToString());

            cn.Open();
            SqlCommand cmd = new SqlCommand("delete from dbo.ProductCategory where id=" + id, cn);
            int result = cmd.ExecuteNonQuery();
            cn.Close();
            if (result == 1)
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "alert(' Deleted Sucessfully');", true);
                getcategory();
            }
        }
        catch
        {
            ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "alert(' Not Deleted');", true);
        }
    }
    protected void gridvoperator_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gridvoperator.EditIndex = e.NewEditIndex;
        getcategory();
    }
    protected void gridvoperator_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gridvoperator.EditIndex = -1;
        getcategory();
    }

    protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gridvoperator.PageIndex = e.NewPageIndex;
        getcategory();
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (txtProduct.Text != "")
        {
            string qry = "insert into dbo.ProductCategory(ProductType) values(@ProductType)";
            SqlParameter ProductType = new SqlParameter("@ProductType", txtProduct.Text.Trim());

            if (cls.ExecuteSql(qry, new SqlParameter[] { ProductType }) > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Product Name Added Sucessfully');", true);
                gridvoperator.EditIndex = -1;
                getcategory();
                clear();
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Event Fail');", true);
            }
        }
    }

    private void clear()
    {
        txtProduct.Text = "";
    }
}