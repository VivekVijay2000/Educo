using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Agency_Default : System.Web.UI.Page
{
    cls_MainProject obj = new cls_MainProject();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string sel = "select * from tbl_institution where institution_id='" + Session["lgid"].ToString() + "'";
            DataTable dt = new DataTable();
            dt = obj.GetDataTable(sel);
          //  txtName.Text = dt.Rows[0]["agency_name"].ToString();
            txtContact.Text = dt.Rows[0]["institution_contact"].ToString();
            txtAddress.Text = dt.Rows[0]["institution_address"].ToString();
            txtEmail.Text = dt.Rows[0]["institution_email"].ToString();
        }
    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        string up = "update tbl_institution set institution_address='" + txtAddress.Text + "',institution_email='" + txtEmail.Text + "',institution_contact='" + txtContact.Text + "' where institution_id='" + Session["lgid"] + "'";
        obj.ExecuteCommand(up);
    }
}