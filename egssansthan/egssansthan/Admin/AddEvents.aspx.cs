using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_AddEvents : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["hms"].ConnectionString);
    SqlComan cls = new SqlComan();
    string newsImage = "";

    string newsImage4 = "";


    FileUpload fileupload1;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getEvent();
        }
    }

    private void getEvent()
    {
        DataTable dt = cls.GetDataTable("select * from dbo.newstable2 order by id desc");
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
        String savePath = Server.MapPath("../eventImg/");
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
        String savePath = Server.MapPath("../eventImg/");
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
        if (txtDate.Text != "" && txtDescription.Text != "" && txtTitle.Text !="")
        {
            Uploadimage();

            string qry = "insert into dbo.newstable2(Date, Title, Description, imgurl) values( @Date, @Title, @Description, @imgurl)";
            SqlParameter Date = new SqlParameter("@Date", txtDate.Text.Trim());
            SqlParameter Title = new SqlParameter("@Title", txtTitle.Text.Trim());
            SqlParameter Description = new SqlParameter("@Description", txtDescription.Text.Trim());
            SqlParameter imgurl = new SqlParameter("@imgurl", newsImage);

            if (cls.ExecuteSql(qry, new SqlParameter[] { Date, Title, Description, imgurl }) > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Events Added Sucessfully');", true);
                gridvoperator.EditIndex = -1;
                getEvent();
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
        txtDate.Text = "";
        txtDescription.Text = "";
        txtTitle.Text = "";
    }
    protected void gridvoperator_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
            int Id = Convert.ToInt32(gridvoperator.DataKeys[e.RowIndex].Value.ToString());
            TextBox txtdate = ((TextBox)gridvoperator.Rows[e.RowIndex].FindControl("txtdate") as TextBox);
            TextBox txttitle = ((TextBox)gridvoperator.Rows[e.RowIndex].FindControl("txttitle") as TextBox);
            TextBox txtdescription = ((TextBox)gridvoperator.Rows[e.RowIndex].FindControl("txtdescription") as TextBox);
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
            string qry = "update dbo.newstable2 set Date=@a, Title=@b, Description=@c, imgurl=@img1 where id=" + Id;

            SqlParameter Date = new SqlParameter("@a", txtdate.Text.Trim());
            SqlParameter Title = new SqlParameter("@b", txtdate.Text.Trim());
            SqlParameter Description = new SqlParameter("@c", txtdescription.Text.Trim());
            SqlParameter imgurl = new SqlParameter("@img1", newsImage4);



            cls.ExecuteSql(qry, new SqlParameter[] { Date, Title, Description, imgurl });
            cn.Close();
            ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "alert(' Updated Sucessfully');", true);
            gridvoperator.EditIndex = -1;
            getEvent();

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
            SqlCommand cmd = new SqlCommand("delete from dbo.newstable2 where id=" + id, cn);
            int result = cmd.ExecuteNonQuery();
            cn.Close();
            if (result == 1)
            {

                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "alert(' Deleted Sucessfully');", true);
                getEvent();
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
        getEvent();

    }
    protected void gridvoperator_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gridvoperator.EditIndex = -1;
        getEvent();
    }
    protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gridvoperator.PageIndex = e.NewPageIndex;
        getEvent();
    }
}