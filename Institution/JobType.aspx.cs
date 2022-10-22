using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_Default : System.Web.UI.Page
{
    cls_MainProject obj = new cls_MainProject();
    public static int id, s = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillGrid();
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (s == 1)
        {
            string up = "update tbl_jobtype set jobtype_name='" + txtService.Text + "' where jobtype_id='" + id + "'";
            obj.executeQuery(up);
            txtService.Text = "";
            fillGrid();
            s = 0;
        }
        else
        {
            string ins = "insert into tbl_jobtype(jobtype_name)values('" + txtService.Text + "')";
            obj.executeQuery(ins);
            txtService.Text = "";
            fillGrid();
        }
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtService.Text = "";
    }
    protected void fillGrid()
    {
        string selQry = "select * from tbl_jobtype";
        obj.fillGrid(gridDetails, selQry);
    }
    protected void gridDetails_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "del")
        {
            string del = "delete from tbl_jobtype where jobtype_id='" + id + "'";
            obj.executeQuery(del);
            fillGrid();
        }
        if (e.CommandName == "ed")
        {
            string sel = "select * from tbl_jobtype where jobtype_id='" + id + "'";
            DataTable dt = new DataTable();
            dt = obj.selectQuery(sel);
            txtService.Text = dt.Rows[0]["jobtype_name"].ToString();
            s = 1;
        }
    }
}