using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace FireExtinguisher
{
    public partial class FE_Add : System.Web.UI.Page
    {
        SqlConnection Con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["connect"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Con.Open();
            String query = "insert into Add_items(dept,location,ext_no,type,capacity,make,mfg_yr,cylinder_no) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "' , '" + TextBox5.Text + "','" + TextBox6.Text + "' , '" + TextBox7.Text + "' , '" + TextBox8.Text + "')";
            SqlCommand cmd = new SqlCommand(query, Con);
            int t = cmd.ExecuteNonQuery();

            Clear();
            Con.Close();
            Response.Redirect("FE_Add.aspx");
        }
        public void Clear()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";

        }
    }
}