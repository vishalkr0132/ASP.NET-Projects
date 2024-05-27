using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["hms"].ConnectionString);
    SqlComan cls = new SqlComan();

    protected void Page_Load(object sender, EventArgs e)
    {
        getEvents();
       
        getSlider();
        getTeacher();
    }

    private void getTeacher()
    {
        DataTable dt = cls.GetDataTable("select * from latestnews");
        if (dt.Rows.Count > 0)
        {
            //rep4.DataSource = dt;
            //rep4.DataBind();

        }
    }

    private void getSlider()
    {
        DataTable dt = cls.GetDataTable("select * from ImageSliderMaster");
        if (dt.Rows.Count > 0)
        {
            //rep3.DataSource = dt;
            //rep3.DataBind();

        }
    }

   

    private void getEvents()
    {
        DataTable dt = cls.GetDataTable("select * from newstable2");
        if (dt.Rows.Count > 0)
        {
            //rep1.DataSource = dt;
            //rep1.DataBind();
        }
    }
    //protected void btn1_Click(object sender, EventArgs e)
    //{
        
    //}
}
