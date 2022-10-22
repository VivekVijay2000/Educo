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
            fillCourse();
            fillSemester();
            fillSubject();
        }
    }
    public void fillCourse()
    {
        string sel = "select * from tbl_course where institution_id='" + Session["lgid"] + "'";
        SqlDataAdapter adp = new SqlDataAdapter(sel, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        Ddl_coursename.DataSource = dt;
        Ddl_coursename.DataTextField = "course_name";
        Ddl_coursename.DataValueField = "course_id";
        Ddl_coursename.DataBind();
    }
    public void fillSemester()
    {
        string sel = "select * from tbl_semester";
        SqlDataAdapter adp = new SqlDataAdapter(sel, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        Ddl_semestername.DataSource = dt;
        Ddl_semestername.DataTextField = "semester_name";
        Ddl_semestername.DataValueField = "semester_id";
        Ddl_semestername.DataBind();
    }
    public void fillSubject()
    {
        string sel = "select * from tbl_subject where institution_id='" + Session["lgid"] + "'";
        SqlDataAdapter adp = new SqlDataAdapter(sel, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        Ddl_subjectname.DataSource = dt;
        Ddl_subjectname.DataTextField = "subject_name";
        Ddl_subjectname.DataValueField = "subject_id";
        Ddl_subjectname.DataBind();
    }

    protected void Btn_save_Click(object sender, EventArgs e)
    {
        string ins = "insert into tbl_syllabus(course_id,semester_id,subject_id,institution_id)values('" + Ddl_coursename.SelectedValue + "','" + Ddl_semestername.SelectedValue + "','" + Ddl_subjectname.SelectedValue + "','" + Session["lgid"] + "')";
        SqlCommand cmd = new SqlCommand(ins, con);
        cmd.ExecuteNonQuery();
        fillgrid();
        // clr();
    }
    protected void Btn_cancel_Click(object sender, EventArgs e)
    {
        Ddl_coursename.ClearSelection();
        Ddl_semestername.ClearSelection();
        Ddl_subjectname.ClearSelection();
       
    }
    public void fillgrid()
    {
        string sel = "select * from tbl_syllabus c inner join tbl_course t on c.course_id=t.course_id inner join tbl_semester se on se.semester_id=c.semester_id inner join tbl_subject s on s.subject_id=c.subject_id where c.institution_id='" + Session["lgid"] + "'";
        SqlDataAdapter adp = new SqlDataAdapter(sel, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        Grd_syllabus.DataSource = dt;
        Grd_syllabus.DataBind();
    }
    protected void Grd_Row_Command(object sender, GridViewCommandEventArgs e)
    {
        int id = Convert.ToInt32(e.CommandArgument);

        if (e.CommandName == "del")
        {
            string del = "delete from tbl_syllabus where syllabus_id='" + id + "'";
            SqlCommand cmd = new SqlCommand(del, con);
            cmd.ExecuteNonQuery();
            fillgrid();

        }
    }
}