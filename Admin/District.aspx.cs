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
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
        if (!IsPostBack)
        {
            fillgrid();
        }


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string ins = "insert into tbl_district(district_name)values('"+Txt_dname.Text+"')";
        SqlCommand cmd = new SqlCommand(ins,con);
        cmd.ExecuteNonQuery();
        clr();
        fillgrid();
    }

    public void clr()
    {
        Txt_dname.Text = "";
    }




    public void fillgrid()
    {
        string sel = "select * from tbl_district";
        SqlDataAdapter adp = new SqlDataAdapter(sel, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        grddistrict.DataSource = dt;
        grddistrict.DataBind();
    }



    protected void grddistrict_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id=Convert.ToInt32(e.CommandArgument);
        string del = "delete from tbl_district where district_id='"+id+"'";
        SqlCommand cmd = new SqlCommand(del, con);
        cmd.ExecuteNonQuery();
        fillgrid();

    }
}