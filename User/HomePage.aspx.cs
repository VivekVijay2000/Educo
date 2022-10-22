using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void linkProfile_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewProfile.aspx");
    }
    protected void linkEdit_Click(object sender, EventArgs e)
    {
        Response.Redirect("EditProfile.aspx");
    }
    protected void LinkChangePass_Click(object sender, EventArgs e)
    {
        Response.Redirect("ChangePassword.aspx");
    }
}