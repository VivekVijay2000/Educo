using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


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
            fillgrid();
        }
    }
    public void fillgrid()
    {
        string sel = "select * from tbl_institution i inner join tbl_place p on p.place_id=i.place_id inner join tbl_district d on d.district_id=p.district_id inner join tbl_institutiontype it on it.institutiontype_id=i.institutiontype_id where i.institution_id='" + Session["lgid"] + "'";
        SqlDataAdapter adp = new SqlDataAdapter(sel, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        Dtl_myprofile.DataSource = dt;
        Dtl_myprofile.DataBind();
    } 
}