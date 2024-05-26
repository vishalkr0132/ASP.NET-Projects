using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class payment1 : System.Web.UI.Page
{
    SqlConnection Con = new SqlConnection(@"Data Source=DESKTOP-UI64GEC;Initial Catalog=grocery;Integrated Security=true");
    int id = 0;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Con.Open();
        string que = "Insert into paymentmodetbl(name, mobile, State, city) values('" + TextBox1.Text + "', '" + TextBox2.Text + "', '" + TextBox3.Text + "', '" + TextBox4.Text + "')";
        SqlCommand cmd = new SqlCommand(que, Con);
        int t = cmd.ExecuteNonQuery();
        if (t > 0)
        {
            Response.Write("<script>alert('Data has been submitted  successfully')</script>");
        }
        Clear();
        Con.Close();
        Response.Write("<script>alert('Data has been submitted  successfully')</script>");
        //Response.Redirect("payment1.aspx");
    }
    public void Clear()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        

    }
}