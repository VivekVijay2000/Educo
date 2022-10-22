using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Default : System.Web.UI.Page
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
        string sel = "select * from tbl_institution i inner join tbl_place p on p.place_id=i.place_id inner join tbl_district d on d.district_id=p.district_id inner join tbl_institutiontype t on t.institutiontype_id=i.institutiontype_id where i.institution_status=2";
        SqlDataAdapter adp = new SqlDataAdapter(sel, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        Grd_institutionlist.DataSource = dt;
        Grd_institutionlist.DataBind();
    }


    protected void Grd_institutionlist_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "acc")
        {
            string up = "update tbl_institution set institution_status='1' where institution_id='" + id + "'";
            SqlCommand cmd= new SqlCommand(up,con);
            cmd.ExecuteNonQuery();
            fillgrid();
        }
      

    }
}