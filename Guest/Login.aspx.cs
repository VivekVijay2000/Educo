using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Data.SqlClient;
using System.Data;

public partial class Guest_Default : System.Web.UI.Page
{
    public static int id = 0;
    SqlConnection con = new SqlConnection("Data Source=LAPTOP-A0HJ1CDM;Initial Catalog=db_student;Integrated Security=True");
   // SqlConnection con = new SqlConnection("Data Source=DESKTOP-C1R9A4F;Initial Catalog=db_student;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }
    protected void Btn_login_Click(object sender, EventArgs e)
    {
        string sel = "select * from tbl_admin where admin_username='" + Txt_name.Text + "' and admin_password='" + Txt_password.Text + "'";
        SqlDataAdapter adp = new SqlDataAdapter(sel, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);



        string sel1 = "select * from tbl_user where user_username='" + Txt_name.Text + "' and user_password='" + Txt_password.Text + "'";
        SqlDataAdapter adp1 = new SqlDataAdapter(sel1, con);
        DataTable dt1 = new DataTable();
        adp1.Fill(dt1);



        string sel2 = "select * from tbl_institution where institution_username='" + Txt_name.Text + "' and institution_password='" + Txt_password.Text + "' and institution_status='1'";
        SqlDataAdapter adp2 = new SqlDataAdapter(sel2, con);
        DataTable dt2 = new DataTable();
        adp2.Fill(dt2);


        string sel3 = "select * from tbl_employee where employee_username='" + Txt_name.Text + "' and employee_password='" + Txt_password.Text + "' and employee_status='1'";
        SqlDataAdapter adp3= new SqlDataAdapter(sel3, con);
        DataTable dt3= new DataTable();
        adp3.Fill(dt3);

        if (dt.Rows.Count > 0)
        {
            Response.Redirect("../Admin/HomePage.aspx");
        }

        else if (dt1.Rows.Count > 0)
        {
            Session["Elgid"] = dt1.Rows[0]["user_id"].ToString();
            Session["lgid"] = dt1.Rows[0]["user_id"].ToString();
            Session["Ulgid"] = dt1.Rows[0]["user_id"].ToString();
            Response.Redirect("../User/HomePage.aspx");
        }

        else if (dt2.Rows.Count > 0)
        {
            Session["Algid"] = dt2.Rows[0]["institution_id"].ToString();
            Session["lgid"] = dt2.Rows[0]["institution_id"].ToString();
            Session["algid"] = dt2.Rows[0]["institution_id"].ToString();
            Response.Redirect("../Institution/HomePage.aspx");
        }
        else if (dt3.Rows.Count > 0)
        {
            Session["Algid"] = dt3.Rows[0]["employee_id"].ToString();
            Session["lgid"] = dt3.Rows[0]["employee_id"].ToString();
            Session["algid"] = dt3.Rows[0]["employee_id"].ToString();
            Session["Elgid"] = dt3.Rows[0]["employee_id"].ToString();
            Response.Redirect("../Employee/EmployeeHomepage.aspx");
        }
        else
        {
            lblmag.Text = "Invalid Login!!!";
        }
    }
}