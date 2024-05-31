using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

namespace FireExtinguisher
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection Con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("select username,password from Login where username='" + TextBox1.Text + "' and password = '" + TextBox2.Text + "'",Con);
             Con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Session["User"] = TextBox1.Text;
                    Response.Redirect("edit.aspx");
                }
                else
                {
                    Response.Write("Data Not Match");
                }
        }
    }
}