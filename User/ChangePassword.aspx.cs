using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_Default : System.Web.UI.Page
{
    cls_MainProject obj = new cls_MainProject();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        string sel = "select * from tbl_user where user_id='" + Session["Ulgid"].ToString() + "'";
        DataTable dt = new DataTable();
        dt = obj.GetDataTable(sel);
        string pass = dt.Rows[0]["user_password"].ToString();

        if ((txtNewpass.Text == txtCpass.Text) && (txtOldpass.Text == pass))
        {

            string up = "update tbl_user set user_password='" + txtNewpass.Text + "' where user_id='" + Session["Ulgid"].ToString() + "'";
            obj.ExecuteCommand(up);
            txtCpass.Text = "";
            txtNewpass.Text = "";
            txtOldpass.Text = "";
            Response.Write("<script>alert('Password updated sucessfully')</script>");
        }
        else
        {
            Response.Write("<script>alert('Wrong Credentials')</script>");
        }
    }
}