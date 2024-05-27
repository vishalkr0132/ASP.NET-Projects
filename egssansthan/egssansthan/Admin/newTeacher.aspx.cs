using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_newTeacher : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["hms"].ConnectionString);
    SqlComan cls = new SqlComan();
    string newsImage = "";
    string newsImage1 = "";
    FileUpload fileUpload;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getTeacher();
        }
    }

    private void getTeacher()
    {
        DataTable dt = cls.GetDataTable("select * from latestnews");
        if (dt.Rows.Count > 0)
        {
            gridvoperator.DataSource = dt;
            gridvoperator.DataBind();
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
    public void Uploadimage1()
    {
        string filename = "";

        if (fileUpload.HasFile)
        {

            filename = SaveFile1(fileUpload.PostedFile);
        }
        else
        {
            filename = "n/a";
        }

        if (filename != "n/a")
        {
            newsImage1 = filename;
        }
    }
    public string SaveFile(HttpPostedFile file)
    {
        string fileName = "";
        String savePath = Server.MapPath("../teacherImg/");
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
    public string SaveFile1(HttpPostedFile file)
    {
        string fileName = "";
        String savePath = Server.MapPath("../teacherImg/");
        fileName = fileUpload.FileName + DateTime.Now.ToFileTime() + ".jpg";
        byte[] fileSize = fileUpload.FileBytes;
        string fileType = fileUpload.PostedFile.ContentType;
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
            fileUpload.SaveAs(savePath);
        }
        catch (Exception e)
        {
            string errmsg = e.Message;
        }
        return fileName;
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {
            Uploadimage();

            string qry = "insert into latestnews(date, title, description, imgurl) values(@date,@title,@description, @imgurl)";
            SqlParameter date = new SqlParameter("@date", TextBox1.Text.Trim());
            SqlParameter title = new SqlParameter("@title", TextBox2.Text.Trim());
            SqlParameter description = new SqlParameter("@description", TextBox3.Text.Trim());
            SqlParameter imgurl = new SqlParameter("@imgurl", newsImage);

            if (cls.ExecuteSql(qry, new SqlParameter[] { date,title, description, imgurl }) > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Image Added Sucessfully');", true);
                gridvoperator.EditIndex = -1;
                getTeacher();
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

    }
    protected void gridvoperator_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
            int Id = Convert.ToInt32(gridvoperator.DataKeys[e.RowIndex].Value.ToString());

            TextBox teacher1 = ((TextBox)gridvoperator.Rows[e.RowIndex].FindControl("teacher1") as TextBox);
            TextBox qualification1 = ((TextBox)gridvoperator.Rows[e.RowIndex].FindControl("qualification1") as TextBox);
            TextBox experience1 = ((TextBox)gridvoperator.Rows[e.RowIndex].FindControl("experience1") as TextBox);
           fileUpload = ((FileUpload)gridvoperator.Rows[e.RowIndex].FindControl("fileUpload") as FileUpload);
            Label lblimg1 = ((Label)gridvoperator.Rows[e.RowIndex].FindControl("Label1") as Label);
            if (fileUpload.HasFile)
            {
                Uploadimage1();
            }
            else
            {
                newsImage1 = lblimg1.Text;
            }
            cn.Open();
            string qry = "update latestnews set  date=@a, title=@b, description=@c ,imgurl=@img1 where id=" + Id;
            SqlParameter teacher2 = new SqlParameter("@a", teacher1.Text.Trim());
            SqlParameter qualification2 = new SqlParameter("@b", qualification1.Text.Trim());
            SqlParameter experience2 = new SqlParameter("@c", experience1.Text.Trim());
            SqlParameter imgurl1 = new SqlParameter("@img1", newsImage);


            cls.ExecuteSql(qry, new SqlParameter[] { teacher2, qualification2,experience2,imgurl1 });
            cn.Close();
            ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "alert(' Updated Sucessfully');", true);
            gridvoperator.EditIndex = -1;
            getTeacher();
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
            SqlCommand cmd = new SqlCommand("delete from latestnews where id=" + id, cn);
            int result = cmd.ExecuteNonQuery();
            cn.Close();
            if (result == 1)
            {

                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "alert(' Deleted Sucessfully');", true);
                getTeacher();
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
        getTeacher();

    }
    protected void gridvoperator_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gridvoperator.EditIndex = -1;
        getTeacher();

    }
    protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gridvoperator.PageIndex = e.NewPageIndex;
        getTeacher();
    }
}