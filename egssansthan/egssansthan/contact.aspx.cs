using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class contact : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["hms"].ConnectionString);
    SqlComan cls = new SqlComan();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn1_Click(object sender, EventArgs e)
    {
        //string qry = "insert into contactmaster2 (Name, Email, Phone, Message) values(@name,@email,@phone,@message)";
        //SqlParameter Name1 = new SqlParameter("@name", txtname.Text.Trim());
        //SqlParameter Email1 = new SqlParameter("@email", TextBox2.Text.Trim());
        ////SqlParameter subject1 = new SqlParameter("@subject", TextBox3.Text.Trim());
        //SqlParameter Phone1 = new SqlParameter("@phone", TextBox4.Text.Trim());
        //SqlParameter Message1 = new SqlParameter("@message", TextBox1.Text.Trim());

        //if (cls.ExecuteSql(qry, new SqlParameter[] { Name1, Email1, Phone1, Message1 }) > 0)
        //{
        //    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Data Added Sucessfully');", true);

        //}
        //else
        //{
        //    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Event Fail');", true);
        //}


        string qry = "insert into contactmaster2(Name,Email,Phone,Message) values(@name,@email,@phone,@message)";
        SqlParameter teacher1 = new SqlParameter("@name", txtname.Text.Trim());
        SqlParameter email1 = new SqlParameter("@email", TextBox2.Text.Trim());
        //SqlParameter subject1 = new SqlParameter("@subject", TextBox3.Text.Trim());
        SqlParameter phone1 = new SqlParameter("@phone", TextBox4.Text.Trim());
        SqlParameter description1 = new SqlParameter("@message", TextBox1.Text.Trim());

        if (cls.ExecuteSql(qry, new SqlParameter[] { teacher1, email1, phone1, description1 }) > 0)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Data Added Sucessfully');", true);
            //Sendsms();
            //Sendmail();

        }
        else
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Event Fail');", true);
        }


    }
}