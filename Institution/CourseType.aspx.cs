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

  //  SqlConnection con = new SqlConnection("Data Source=DREAM;Initial Catalog=db_student;Integrated Security=True");
  
    protected void Page_Load(object sender, EventArgs e)
    {

        con.Open();
        if (!IsPostBack)
        {
            fillgrid();
        }
    }
    protected void save_Click(object sender, EventArgs e)
    {
        string ins = "insert into tbl_coursetype(coursetype_name)values('" + Txt_typename.Text + "')";
        SqlCommand cmd = new SqlCommand(ins,con);
        cmd.ExecuteNonQuery();
        fillgrid();
       // clr();
    }
    protected void Txt_name_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Btn_cancel_Click(object sender, EventArgs e)
    {
        Txt_typename.Text = "";
    }
    public void fillgrid()
    {
        string sel = "select * from tbl_coursetype";
        SqlDataAdapter adp = new SqlDataAdapter(sel, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        Grd_coursetype.DataSource = dt;
        Grd_coursetype.DataBind();
    }


    protected void Grd_coursetype_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        
          int   id = Convert.ToInt32(e.CommandArgument);

          if (e.CommandName=="del")
          {
              string del = "delete from tbl_coursetype where coursetype_id='" + id + "'";
              SqlCommand cmd = new SqlCommand(del, con);
              cmd.ExecuteNonQuery();
              fillgrid();

          }
        
    }
}