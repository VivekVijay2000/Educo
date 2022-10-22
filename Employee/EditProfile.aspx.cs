using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class Employee_Default : System.Web.UI.Page
{
   // SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=db_NursingCare;Integrated Security=True");
    cls_MainProject obj = new cls_MainProject();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
           
            string selQry = "select * from tbl_employee where employee_id='" + Session["Elgid"].ToString() + "'";
          

            DataTable dt = new DataTable();

            dt = obj.selectQuery(selQry);

            //dt=obj.selectQuery(selQry);
            // Image1.ImageUrl = "../Photos/" + dt.Rows[0]["employee_photo"].ToString();
            txtAddress.Text = dt.Rows[0]["employee_address"].ToString();
            txtContact.Text = dt.Rows[0]["employee_contact"].ToString();

            txtEmail.Text = dt.Rows[0]["employee_email"].ToString();
        }
    }
    //protected void btnSave_Click(object sender, EventArgs e)
    //{
    //    string up = "update tbl_employee set employee_name='" + txtName.Text + "',employee_address='" + txtAddress.Text + "',employee_email='" + txtEmail.Text + "',employee_contact='" + txtContact.Text + "' where daycare_id='" + Session["Elgid"] + "'";
    //    obj.executeQuery(up);
    //}
   
    protected void btnUpdate_Click(object sender, EventArgs e)
    {

        string up = "update tbl_employee set employee_address='" + txtAddress.Text + "',employee_email='" + txtEmail.Text + "',employee_contact='" + txtContact.Text + "' where employee_id='" + Session["Elgid"] + "'";

            obj.executeQuery(up);
        
    }
}