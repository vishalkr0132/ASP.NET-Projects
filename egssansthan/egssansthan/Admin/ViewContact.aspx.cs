using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_ViewContact : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["hms"].ConnectionString);
    SqlComan cls = new SqlComan();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getContact();
        }
    }

    private void getContact()
    {
        DataTable dt = cls.GetDataTable("select * from contactmaster3 order by id desc");
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
            TextBox txtname = ((TextBox)gridvoperator.Rows[e.RowIndex].FindControl("txtname") as TextBox);
            TextBox txtemail = ((TextBox)gridvoperator.Rows[e.RowIndex].FindControl("txtemail") as TextBox);
            TextBox txtmobile = ((TextBox)gridvoperator.Rows[e.RowIndex].FindControl("txtmobile") as TextBox);
            TextBox txtmessage = ((TextBox)gridvoperator.Rows[e.RowIndex].FindControl("txtmessage") as TextBox);
         
            cn.Open();
            string qry = "update contactmaster3 set Name=@a, Email=@b, Phone=@c, Message=@d where id=" + Id;

            SqlParameter Name = new SqlParameter("@a", txtname.Text.Trim());
            SqlParameter Email = new SqlParameter("@b", txtemail.Text.Trim());
            SqlParameter Phone = new SqlParameter("@c", txtmobile.Text.Trim());
            SqlParameter Message = new SqlParameter("@d", txtmessage.Text.Trim());

            cls.ExecuteSql(qry, new SqlParameter[] { Name, Email, Phone, Message });
            cn.Close();
            ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "alert(' Updated Sucessfully');", true);
            gridvoperator.EditIndex = -1;
            getContact();

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
            SqlCommand cmd = new SqlCommand("delete from dbo.contactmaster2 where id=" + id, cn);
            int result = cmd.ExecuteNonQuery();
            cn.Close();
            if (result == 1)
            {

                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "alert(' Deleted Sucessfully');", true);
                getContact();
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
        getContact();

    }
    protected void gridvoperator_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gridvoperator.EditIndex = -1;
        getContact();
    }
    protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gridvoperator.PageIndex = e.NewPageIndex;
        getContact();
    }
}
