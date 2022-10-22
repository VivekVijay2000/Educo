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
    // SqlConnection con = new SqlConnection("Data Source=LAPTOP-A0HJ1CDM;Initial Catalog=db_student;Integrated Security=True");

    SqlConnection con = new SqlConnection("Data Source=DREAM;Initial Catalog=db_student;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        if (!IsPostBack)
        {
            fillCategory();
            fillgrid();
        }
    }
    protected void Btnsave_Click(object sender, EventArgs e)
    {
        string ins = "insert into tbl_subcategory(category_id,subcategory_name)values('" + Ddl_category.SelectedValue + "','" + Txt_sub.Text + "')";
        SqlCommand cmd = new SqlCommand(ins, con);
        cmd.ExecuteNonQuery();
        fillCategory();
        fillgrid();
    }
    protected void Btn_cancel_Click(object sender, EventArgs e)
    {
        Ddl_category.ClearSelection();
        Txt_sub.Text = "";
    }
    public void fillCategory()
    {
        string sel = "select * from tbl_category";
        SqlDataAdapter adp = new SqlDataAdapter(sel, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        Ddl_category.DataSource = dt;
        Ddl_category.DataTextField = "category_name";
        Ddl_category.DataValueField = "category_id";
        Ddl_category.DataBind();
    }
    public void fillgrid()
    {
        string sel = "select * from tbl_subcategory";
        SqlDataAdapter adp = new SqlDataAdapter(sel, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        Grdsubcategory.DataSource = dt;
        Grdsubcategory.DataBind();
    }
    protected void Grdsubcategory_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        string del = "delete from tbl_subcategory where subcategory_id='" + id + "'";
        SqlCommand cmd = new SqlCommand(del, con);
        cmd.ExecuteNonQuery();
        fillCategory();
        fillgrid();
    }
}
