using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class Agency_Default : System.Web.UI.Page
{
    cls_MainProject obj = new cls_MainProject();
    public static int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillServicetype();
            fillGrid();
        }
    }
    protected void fillServicetype()
    {
       
        obj.FillDrop(ddlType, "coursetype_name", "coursetype_id","tbl_coursetype");
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {

        string insQry = "insert into tbl_course (coursetype_id,course_name,course_duration,institution_id,course_rate,course_downpayment)values('" + ddlType.SelectedValue + "','" + txtname.Text + "','" + txtduration.Text + "','" + Session["lgid"] + "','" + txtRate.Text + "','"+txtdown.Text+"')";
        obj.ExecuteCommand(insQry);
        fillGrid();
        clearSelection();
    }
    protected void clearSelection()
    {
        txtduration.Text = "";
        txtRate.Text = "";
        txtname.Text = "";
        ddlType.ClearSelection();
    }
    protected void fillGrid()
    {
        string selQry = "select * from tbl_coursetype s inner join tbl_course a on s.coursetype_id=a.coursetype_id where a.institution_id='" + Session["lgid"].ToString() + "'";
        obj.FillGridView(selQry,grdDetails);
    }
    protected void grdDetails_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "del")
        {
            string del = "delete from tbl_course where service_id='" + id + "'";
            obj.ExecuteCommand(del);
            fillGrid();
        }
    }
}