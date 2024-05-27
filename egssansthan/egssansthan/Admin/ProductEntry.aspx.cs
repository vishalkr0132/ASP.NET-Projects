using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_ProductEntry : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["hms"].ConnectionString);
    SqlComan cls = new SqlComan();
    string newsImage = "";

    string newsImage4 = "";


    FileUpload fileupload1;
    FileUpload fileupload2;
    FileUpload fileupload3;
    FileUpload fileupload4;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getSubcategory();
            getProductEntry();
        }
    }

    private void getProductEntry()
    {
        DataTable dt = cls.GetDataTable("select * from ProductMaster order by id desc");
        if (dt.Rows.Count > 0)
        {
            gridvoperator.DataSource = dt;
            gridvoperator.DataBind();
        }
    }

    private void getSubcategory()
    {
        cn.Open();
        DataTable dt = cls.GetDataTable("select * from dbo.ProductCategory");
        if (dt.Rows.Count > 0)
        {
            DropDownList1.DataTextField = "ProductType";
            DropDownList1.DataValueField = "id";
            DropDownList1.DataSource = dt;
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new ListItem("-- Select Name--", "0"));
        }
    }

    public void Uploadimage()
    {
        string filename = "";
        if (FileUpload1.HasFile)
        {
            filename = SaveFile(FileUpload1.PostedFile);
        }
        else
        {
            filename = "n/a";
        }

        if (filename != "n/a")
        {
            newsImage = filename;
        }
    }

    public void Uploadimage4()
    {
        string filename = "";
        if (fileupload1.HasFile)
        {
            filename = SaveFile4(fileupload1.PostedFile);
        }
        else
        {
            filename = "n/a";
        }

        if (filename != "n/a")
        {
            newsImage4 = filename;
        }
    }

    public string SaveFile(HttpPostedFile file)
    {
        string fileName = "";
        String savePath = Server.MapPath("../Product-Img/");
        fileName = FileUpload1.FileName + DateTime.Now.ToFileTime() + ".jpg";
        byte[] fileSize = FileUpload1.FileBytes;
        string fileType = FileUpload1.PostedFile.ContentType;
        string pathToCheck = savePath + fileName;
        string tempfileName = "";
        try
        {
            if (System.IO.File.Exists(pathToCheck))
            {
                int counter = 2;
                while (System.IO.File.Exists(pathToCheck))
                {
                    tempfileName = counter.ToString() + fileName;
                    pathToCheck = savePath + tempfileName;
                    counter++;
                }
                fileName = tempfileName;
            }
            else
            {
            }
            savePath += fileName;
            FileUpload1.SaveAs(savePath);
        }
        catch (Exception e)
        {
            string errmsg = e.Message;
        }
        return fileName;
    }


    public string SaveFile4(HttpPostedFile file)
    {
        string fileName = "";
        String savePath = Server.MapPath("../Product-Img/");
        fileName = fileupload1.FileName + DateTime.Now.ToFileTime() + ".jpg";
        byte[] fileSize = fileupload1.FileBytes;
        string fileType = fileupload1.PostedFile.ContentType;
        string pathToCheck = savePath + fileName;
        string tempfileName = "";
        try
        {
            if (System.IO.File.Exists(pathToCheck))
            {
                int counter = 2;
                while (System.IO.File.Exists(pathToCheck))
                {
                    tempfileName = counter.ToString() + fileName;
                    pathToCheck = savePath + tempfileName;
                    counter++;
                }
                fileName = tempfileName;
            }
            else
            {
            }
            savePath += fileName;
            fileupload1.SaveAs(savePath);
        }
        catch (Exception e)
        {
            string errmsg = e.Message;
        }
        return fileName;
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (txtType.Text !="" && txtDescription.Text !="")
        {
            Uploadimage();

            string qry = "insert into dbo.ProductMaster(ProductType, Type, Description, imgurl) values( @ProductType, @Type, @Description, @imgurl)";
            SqlParameter ProductType = new SqlParameter("@ProductType", DropDownList1.SelectedItem.Text);
            SqlParameter Type = new SqlParameter("@Type", txtType.Text.Trim());
            SqlParameter Discription = new SqlParameter("@Description", txtDescription.Text.Trim());
            SqlParameter imgurl = new SqlParameter("@imgurl", newsImage);




            if (cls.ExecuteSql(qry, new SqlParameter[] { ProductType, Type, Discription, imgurl }) > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Product Added Sucessfully');", true);
                gridvoperator.EditIndex = -1;
                getProductEntry();
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
        txtDescription.Text = "";
        txtType.Text = "";
    }
    protected void gridvoperator_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
            int Id = Convert.ToInt32(gridvoperator.DataKeys[e.RowIndex].Value.ToString());
            TextBox txttype = ((TextBox)gridvoperator.Rows[e.RowIndex].FindControl("txttype") as TextBox);
            TextBox txtdiscription = ((TextBox)gridvoperator.Rows[e.RowIndex].FindControl("txtdiscription") as TextBox);
            fileupload1 = ((FileUpload)gridvoperator.Rows[e.RowIndex].FindControl("fileupload1") as FileUpload);
            Label lblimg1 = ((Label)gridvoperator.Rows[e.RowIndex].FindControl("Label1") as Label);
            if (fileupload1.HasFile)
            {
                Uploadimage4();
            }
            else
            {
                newsImage4 = lblimg1.Text;
            }
            cn.Open();
            string qry = "update dbo.ProductMaster set Type=@a, Description=@b, imgurl=@img1 where id=" + Id;

            SqlParameter Type = new SqlParameter("@a", txttype.Text.Trim());
            SqlParameter Description = new SqlParameter("@b", txtdiscription.Text.Trim());
            SqlParameter imgurl = new SqlParameter("@img1", newsImage4);



            cls.ExecuteSql(qry, new SqlParameter[] { Type, Description, imgurl });
            cn.Close();
            ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "alert(' Updated Sucessfully');", true);
            gridvoperator.EditIndex = -1;
            getProductEntry();

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
            SqlCommand cmd = new SqlCommand("delete from ProductMaster where id=" + id, cn);
            int result = cmd.ExecuteNonQuery();
            cn.Close();
            if (result == 1)
            {

                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "alert(' Deleted Sucessfully');", true);
                getProductEntry();
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
        getProductEntry();

    }
    protected void gridvoperator_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gridvoperator.EditIndex = -1;
        getProductEntry();
    }
    protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gridvoperator.PageIndex = e.NewPageIndex;
        getProductEntry();
    }

}