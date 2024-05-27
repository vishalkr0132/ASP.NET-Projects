using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_AddImageSlider : System.Web.UI.Page
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
            getslider();
        }
    }

    private void getslider()
    {
        DataTable dt = cls.GetDataTable("select * from ImageSliderMaster order by id desc");
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
        String savePath = Server.MapPath("../sliderImg/");
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
        String savePath = Server.MapPath("../sliderImg/");
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
        if (txtOferType.Text != "")
        {
            Uploadimage();

            string qry = "insert into dbo.ImageSliderMaster(OfferType, imgurl) values(@OfferType, @imgurl)";
            SqlParameter OfferType = new SqlParameter("@OfferType", txtOferType.Text.Trim());
            SqlParameter imgurl = new SqlParameter("@imgurl", newsImage);

            if (cls.ExecuteSql(qry, new SqlParameter[] { imgurl, OfferType }) > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Image Added Sucessfully');", true);
                gridvoperator.EditIndex = -1;
                getslider();
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

            TextBox txtOType = ((TextBox)gridvoperator.Rows[e.RowIndex].FindControl("txtOType") as TextBox);
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
            string qry = "update dbo.ImageSliderMaster set OfferType=@a, imgurl=@img1 where id=" + Id;
            SqlParameter OfferType = new SqlParameter("@a", txtOType.Text.Trim());
            SqlParameter imgurl = new SqlParameter("@img1", newsImage1);


            cls.ExecuteSql(qry, new SqlParameter[] { OfferType, imgurl });
            cn.Close();
            ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "alert(' Updated Sucessfully');", true);
            gridvoperator.EditIndex = -1;
            getslider();
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
            SqlCommand cmd = new SqlCommand("delete from dbo.ImageSliderMaster where id=" + id, cn);
            int result = cmd.ExecuteNonQuery();
            cn.Close();
            if (result == 1)
            {

                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "alert(' Deleted Sucessfully');", true);
                getslider();
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
        getslider();

    }
    protected void gridvoperator_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gridvoperator.EditIndex = -1;
        getslider();

    }
    protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gridvoperator.PageIndex = e.NewPageIndex;
        getslider();
    }
}