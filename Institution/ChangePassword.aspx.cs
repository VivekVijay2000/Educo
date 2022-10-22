using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Institution_Default : System.Web.UI.Page
{
    public static int id = 0;
    SqlConnection con = new SqlConnection("Data Source=LAPTOP-A0HJ1CDM;Initial Catalog=db_student;Integrated Security=True");
   // SqlConnection con = new SqlConnection("Data Source=DREAM;Initial Catalog=db_student;Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        if (!IsPostBack)
        {

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string s = "select * from tbl_institution where institution_id ='" + Session["lgid"] + "' and institution_password = '" + Txt_current.Text + "' ";
        DataTable dt = new DataTable();
        SqlDataAdapter ad = new SqlDataAdapter(s, con);
        ad.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            if (Txt_confirm.Text == Txt_confirm.Text)
            {
                string u = "update tbl_institution set institution_password= '" + Txt_new.Text + "' where institution_id  ='" + Session["lgid"] + "' ";
                SqlCommand cmd = new SqlCommand(u, con);
                cmd.ExecuteNonQuery();
            }
        }
    }
}