using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Latestnews : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["hms"].ConnectionString);
    SqlComan cls = new SqlComan();

    protected void Page_Load(object sender, EventArgs e)
    {
        getLatestNews();
    }

    private void getLatestNews()
    {
        DataTable dt = cls.GetDataTable("select * from latestnews");
        if (dt.Rows.Count > 0)
        {
            rep4.DataSource = dt;
            rep4.DataBind();

        }
    }
}