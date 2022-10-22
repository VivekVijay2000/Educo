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
        string selQry = "select * from tbl_jobtype";
        obj.fillDDL(ddlServiceType, "jobtype_name", "jobtype_id",selQry);
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
       
        string insQry = "insert into tbl_job (jobtype_id,job_name,description,institution_id,job_basicsalary)values('" + ddlServiceType.SelectedValue + "','" + txtService.Text + "','" + txtDescription.Text + "','" + Session["algid"] + "','" + txtRate.Text + "')";
        obj.executeQuery(insQry);
        fillGrid();
        clearSelection();
    }
    protected void clearSelection()
    {
        txtDescription.Text = "";
        txtRate.Text = "";
        txtService.Text = "";
        ddlServiceType.ClearSelection();
    }
    protected void fillGrid()
    {
        string selQry = "select * from tbl_jobtype s inner join tbl_job a on s.jobtype_id=a.jobtype_id where a.institution_id='" + Session["algid"] + "'";
        obj.fillGrid(grdDetails,selQry);
    }
    protected void grdDetails_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "del")
        {
            string del = "delete from tbl_job where job_id='" + id + "'";
            obj.executeQuery(del);
            fillGrid();
        }
    }
}