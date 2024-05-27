using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;
using System.Configuration;

public partial class Login_Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["hms"].ConnectionString);
    SqlComan cls = new SqlComan();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Login();
        }
    }

    private void Login()
    {
        DataTable dt = cls.GetDataTable("select * from LoginMaster");
        if (dt.Rows.Count > 0)
        {
            txtEmail.Visible = true;
            txtPass.Visible = true;
            btnLogin.Visible = true;
            btnSignup.Visible = false;
        }
        else
        {
            txtEmail.Visible = true;
            txtPass.Visible = true;
            btnLogin.Visible = false;
            btnSignup.Visible = true;
        }

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        {
            CCommonDB sql = new CCommonDB();

            string redirect = "";
            Session["uid"] = txtEmail.Text.Trim();
            Session["Pass"] = txtPass.Text.Trim();
            if ((redirect = sql.AuthenticateUser(this.Session, this.Response, txtEmail.Text, txtPass.Text)) != string.Empty)
            {
                Response.Redirect(redirect);
            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Login Fail')</script>");
            }

        }
    }
    protected void btnSignup_Click(object sender, EventArgs e)
    {
        if (txtEmail.Text != "" && txtPass.Text != "")
        {
            string uid = string.Empty;
            string Pass = string.Empty;
            SqlCommand cmd = new SqlCommand("insert into LoginMaster(UserName, Password, LoginType)values(@a,@b,@c)", con);


            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            try
            {

                uid = CCommonDB.Encrypt(txtEmail.Text.Trim());

                Pass = CCommonDB.Encrypt(txtPass.Text.Trim());

                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@a", uid);
                cmd.Parameters.AddWithValue("@b", Pass);
                cmd.Parameters.AddWithValue("@c", "Admin" );
                cmd.ExecuteNonQuery();

            }
  
      
            catch (Exception ex)
            {
                Response.Write("Error Occured:" + ex.Message.ToString());
            }
            finally
            {
                uid = string.Empty;
                Pass = string.Empty;
                con.Close();
                cmd.Dispose();

            }
            
        }
       
    }
}
