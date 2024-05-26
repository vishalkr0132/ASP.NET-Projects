using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class paymentdetail : System.Web.UI.Page
{
    SqlConnection Con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["abc"].ConnectionString);



    /*qlConnection Con = new SqlConnection(@"Data Source=DESKTOP-V3G81QS;Initial Catalog=grocery;Integrated Security=true");*/

    int id = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        Clear();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            //Con.Open();
            //string que = "Insert into paymenttbl(name, email, telephone, product, state, country, message) values('" + TextBox1.Text + "', '" + TextBox2.Text + "', '" + TextBox3.Text + "', '" + TextBox4.Text + "','" + DropDownList1.Text + "', '" + TextBox6.Text + "', '" + TextBox7.Text + "')";
            //SqlCommand cmd = new SqlCommand(que, Con);
            //int t = cmd.ExecuteNonQuery();
            //if (t > 0)
            //{
            //    Response.Write("<script>alert('Data has been submitted  successfully')</script>");
            //}
            //Clear();
            //Con.Close();
            //Response.Redirect("payment1.aspx"); 

            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && DropDownList1.Text != "" && TextBox6.Text != "" && TextBox7.Text != "")
            {
                string query = "Insert into paymenttbl(name, email, telephone, product, state, country, message) values('" + TextBox1.Text + "', '" + TextBox2.Text + "', '" + TextBox3.Text + "', '" + TextBox4.Text + "','" + DropDownList1.SelectedItem + "', '" + TextBox6.Text + "', '" + TextBox7.Text + "')";

                SqlDataAdapter da = new SqlDataAdapter(query, Con);
                Con.Open();
                da.SelectCommand.ExecuteNonQuery();



                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Details Send Sucessfully!! Now go for payment ');", true);
                Clear();
                Con.Close();
            }
            else
            {

                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('please fill textbox properly');", true);
            }

        }
        catch
        {

            Con.Close();
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('event failed!!');", true);
            Clear();

        }
    }
        public void Clear()
        {
            
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";

            } 
    }


  
  