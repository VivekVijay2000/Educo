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
    SqlConnection con = new SqlConnection("Data Source=LAPTOP-A0HJ1CDM;Initial Catalog=db_student;Integrated Security=True");

    //SqlConnection con = new SqlConnection("Data Source=DREAM;Initial Catalog=db_student;Integrated Security=True");
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
        string ins = "insert into tbl_subject(subject_name,subject_duration,subject_rate,institution_id)values('" + Txt_name.Text + "','"+txtduration.Text+"','"+txtrate.Text+"','"+Session["lgid"]+"')";
        SqlCommand cmd = new SqlCommand(ins, con);
        cmd.ExecuteNonQuery();
        fillgrid();
        Txt_name.Text = "";
        // clr();
    }
    protected void Btn_cancel_Click(object sender, EventArgs e)
    {
        Txt_name.Text = "";
    }

    public void fillgrid()
    {
        string sel = "select * from tbl_subject where institution_id='" + Session["lgid"] + "'";
        SqlDataAdapter adp = new SqlDataAdapter(sel, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        Grd_subject.DataSource = dt;
        Grd_subject.DataBind();
    }
    protected void Grd_subject_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        
          int   id = Convert.ToInt32(e.CommandArgument);

          if (e.CommandName=="del")
          {
              string del = "delete from tbl_subject where subject_id='" + id + "'";
              SqlCommand cmd = new SqlCommand(del, con);
              cmd.ExecuteNonQuery();
              fillgrid();

          }
    }
    
}