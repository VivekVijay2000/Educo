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
        string ins = "insert into tbl_complainttype(complainttype_name)values('" + Txt_ctype.Text + "')";
        SqlCommand cmd = new SqlCommand(ins, con);
        cmd.ExecuteNonQuery();
        fillgrid();
        // clr();
    }
    public void fillgrid()
    {
        string sel = "select * from tbl_complainttype";
        SqlDataAdapter adp = new SqlDataAdapter(sel, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        Grd_complainttype.DataSource = dt;
        Grd_complainttype.DataBind();
    }
    protected void Btn_cancel_Click(object sender, EventArgs e)
    {
        Txt_ctype.Text = "";
    }
    protected void Grd_complainttype_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        string del = "delete from tbl_complainttype where complainttype_id='" + id + "'";
        SqlCommand cmd = new SqlCommand(del, con);
        cmd.ExecuteNonQuery();
        fillgrid();
    }
    protected void Txt_ctype_TextChanged(object sender, EventArgs e)
    {

    }
}
