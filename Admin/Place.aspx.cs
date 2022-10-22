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
    //SqlConnection con = new SqlConnection("Data Source=DREAM;Initial Catalog=db_student;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        if (!IsPostBack)
        {
            fillDistrict();
            fillgrid();
        }
    }
    protected void Btn_save_Click(object sender, EventArgs e)
    {
        string ins = "insert into tbl_place(district_id,place_name)values('" + Ddl_district.SelectedValue + "','" + Txt_place.Text + "')";
        SqlCommand cmd = new SqlCommand(ins, con);
        cmd.ExecuteNonQuery();
        fillgrid();
        Ddl_district.ClearSelection();
        Txt_place.Text = "";
   
    }
    public void fillDistrict()
    {
        string sel = "select * from tbl_district";
        SqlDataAdapter adp = new SqlDataAdapter(sel, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        Ddl_district.DataSource = dt;
        Ddl_district.DataTextField = "district_name";
        Ddl_district.DataValueField = "district_id";
        Ddl_district.DataBind();
        Ddl_district.Items.Insert(0,"--select--");
    }
    public void fillgrid()
    {
        string sel = "select * from tbl_place p inner join tbl_district d on p.district_id=d.district_id";
        SqlDataAdapter adp = new SqlDataAdapter(sel, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        Grdplace.DataSource = dt;
        Grdplace.DataBind();
    }
    protected void Btn_cancel_Click(object sender, EventArgs e)
    {
         Ddl_district.ClearSelection();
        Txt_place.Text = "";
    }

   
    protected void Grdplace_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        string del = "delete from tbl_place where place_id='" + id + "'";
        SqlCommand cmd = new SqlCommand(del, con);
        cmd.ExecuteNonQuery();
        fillDistrict();
        fillgrid();

    }
}