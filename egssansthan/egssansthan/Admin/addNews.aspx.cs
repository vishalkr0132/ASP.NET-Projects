using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_addNews : System.Web.UI.Page
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
            getNews();
        }
    }

    private void getNews()
    {
        DataTable dt = cls.GetDataTable("select * from newstable1");
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
        String savePath = Server.MapPath("../Img-Slider/");
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
        String savePath = Server.MapPath("../Img-Slider/");
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

            string qry = "insert into newstable1(title,description,imgurl) values(@title,@description, @imgurl)";
            SqlParameter title = new SqlParameter("@title", TextBox1.Text.Trim());
            SqlParameter description = new SqlParameter("@description", TextBox2.Text.Trim());
            SqlParameter imgurl = new SqlParameter("@imgurl", newsImage);

            if (cls.ExecuteSql(qry, new SqlParameter[] { title, description,imgurl, }) > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Image Added Sucessfully');", true);
                gridvoperator.EditIndex = -1;
                getNews();
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

            TextBox title1 = ((TextBox)gridvoperator.Rows[e.RowIndex].FindControl("title1") as TextBox);
            TextBox description1 = ((TextBox)gridvoperator.Rows[e.RowIndex].FindControl("description1") as TextBox);
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
            string qry = "update newstable1 set title=@a, description=@b, imgurl=@img1 where id=" + Id;
            SqlParameter title2 = new SqlParameter("@a", title1.Text.Trim());
            SqlParameter description2 = new SqlParameter("@b", description1.Text.Trim());
            SqlParameter imgurl1 = new SqlParameter("@img1", newsImage);


            cls.ExecuteSql(qry, new SqlParameter[] { title2, description2, imgurl1 });
            cn.Close();
            ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "alert(' Updated Sucessfully');", true);
            gridvoperator.EditIndex = -1;
            getNews();
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
            SqlCommand cmd = new SqlCommand("delete from newstable1 where id=" + id, cn);
            int result = cmd.ExecuteNonQuery();
            cn.Close();
            if (result == 1)
            {

                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "alert(' Deleted Sucessfully');", true);
                getNews();
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
        getNews();

    }
    protected void gridvoperator_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gridvoperator.EditIndex = -1;
        getNews();

    }
    protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gridvoperator.PageIndex = e.NewPageIndex;
        getNews();
    }
}