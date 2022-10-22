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
        if (!IsPostBack)
        {
            string sel = "select * from tbl_user where user_id='" + Session["Ulgid"].ToString() + "'";
            DataTable dt = new DataTable();
            dt = obj.GetDataTable(sel);
            
            txtContact.Text = dt.Rows[0]["user_contact"].ToString();
            txtAddress.Text = dt.Rows[0]["user_address"].ToString();
            txtEmail.Text = dt.Rows[0]["user_email"].ToString();
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        string up = "update tbl_user set user_address='" + txtAddress.Text + "',user_email='" + txtEmail.Text + "',user_contact='" + txtContact.Text + "' where user_id='" + Session["Ulgid"] + "'";
        obj.ExecuteCommand(up);
    }
}