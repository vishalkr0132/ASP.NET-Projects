using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] == null)
        {
            Response.Redirect("../Log.aspx");
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Contents.Remove("uid");
        Response.Redirect("../Default.aspx");  
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session.Contents.Remove("uid");
        Response.Redirect("../Default.aspx");  
    }
}
