using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Employee_Default : System.Web.UI.Page
{
    cls_MainProject obj = new cls_MainProject();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        string sel = "select * from tbl_employee where employee_id='" + Session["Elgid"].ToString() + "'";
        DataTable dt = new DataTable();
        dt = obj.selectQuery(sel);
        string pass = dt.Rows[0]["employee_password"].ToString();

        if ((txtNewpass.Text == txtCpass.Text) && (txtOld.Text == pass))
        {

            string up = "update tbl_employee set employee_password='" + txtNewpass.Text + "' where employee_id='" + Session["Elgid"].ToString() + "'";
            obj.executeQuery(up);
            txtCpass.Text = "";
            txtNewpass.Text = "";
            txtOld.Text = "";
            Response.Write("<script>alert('Password updated sucessfully')</script>");
        }
        else
        {
            Response.Write("<script>alert('Wrong Credentials')</script>");
        }
    }
}