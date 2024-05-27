using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Mediagallery : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["hms"].ConnectionString);
    SqlComan cls = new SqlComan();
    protected void Page_Load(object sender, EventArgs e)
    {
        getMediaGallery();
    }

    private void getMediaGallery()
    {
        DataTable dt = cls.GetDataTable("select * from GalleryMaster");
        if (dt.Rows.Count > 0)
        {
            rep2.DataSource = dt;
            rep2.DataBind();

        }
    }

    
}