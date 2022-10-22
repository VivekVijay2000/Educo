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
    protected void Btn_save_Click(object sender, EventArgs e)
    {
        string ins = "insert into tbl_institutiontype(institutiontype_name)values('" + Txt_institutiontype.Text + "')";
        SqlCommand cmd = new SqlCommand(ins, con);
        cmd.ExecuteNonQuery();
        fillgrid();
        // clr();
    }
    protected void Grd_institutiontype_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int id = Convert.ToInt32(e.CommandArgument);

        if (e.CommandName == "del")
        {
            string del = "delete from tbl_institutiontype where institutiontype_id='" + id + "'";
            SqlCommand cmd = new SqlCommand(del, con);
            cmd.ExecuteNonQuery();
            fillgrid();
        }
    }
    public void fillgrid()
    {
        string sel = "select * from tbl_institutiontype";
        SqlDataAdapter adp = new SqlDataAdapter(sel, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        Grd_institutiontype.DataSource = dt;
        Grd_institutiontype.DataBind();
    }

protected void Btn_cancel_Click(object sender, EventArgs e)
{
     Txt_institutiontype.Text = "";
}
}
