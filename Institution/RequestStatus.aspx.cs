using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Employee_Default : System.Web.UI.Page
{
    cls_MainProject obj = new cls_MainProject();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        string s = "select * from tbl_employeerequest r inner join tbl_employee a on a.employee_id=r.employee_id inner join tbl_place p on p.place_id=a.place_id inner join tbl_job j on j.job_id=r.job_id where r.empr_vstatus='Pending' and r.institution_id='" + Session["Algid"] + "'";
        obj.fillGrid(GridView1, s);
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {


        if (e.CommandName == "dw2")
        {
            string fname = e.CommandArgument.ToString();

            DownloadFile(fname, true);
        }
        if (e.CommandName == "ac")
        {
            string id = e.CommandArgument.ToString();

            string up = "update tbl_employeerequest set empr_vstatus='Accepted' where empr_id='" + id + "'";
            obj.executeQuery(up);
            Response.Redirect("RequestStatus.aspx");

        }
        if (e.CommandName == "rej")
        {
            string id = e.CommandArgument.ToString();

            string up = "update tbl_employeerequest set empr_vstatus='Rejected' where empr_id='" + id + "'";
            obj.executeQuery(up);
            Response.Redirect("RequestStatus.aspx");

        }
        
    }
    private void DownloadFile(string fname, bool forceDownload)
    {
        string path = Server.MapPath("../Photos/" + fname);
        string name = Path.GetFileName(path);
        string ext = Path.GetExtension(path);
        string type = "";
        if (ext != null)
        {
            switch (ext.ToLower())
            {
                case ".htm":
                case ".html":
                    type = "text/HTML";
                    break;

                case ".txt":
                    type = "text/notepad";
                    break;

                case ".doc":
                case ".rtf":
                    type = "Application/msword";
                    break;

                case ".jpg":
                case ".jpeg":
                    type = "images/Windows Picture and Fax Viewer";
                    break;
            }
        }
        if (forceDownload)
        {
            Response.AppendHeader("content-disposition", "attachment; filename=" + name);
        }
        if (type != "")
            Response.ContentType = type;
        Response.WriteFile(path);
        Response.End();
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        string s = "select * from tbl_employeerequest r inner join tbl_employee a on a.employee_id=r.employee_id inner join tbl_place p on p.place_id=a.place_id inner join tbl_job j on j.job_id=r.job_id where r.empr_vstatus='Accepted' and r.institution_id='" + Session["Algid"] + "'";
        obj.fillGrid(GridView2, s);
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
        string s = "select * from tbl_employeerequest r inner join tbl_employee a on a.employee_id=r.employee_id inner join tbl_place p on p.place_id=a.place_id inner join tbl_job j on j.job_id=r.job_id where r.empr_vstatus='Rejected' and r.institution_id='" + Session["Algid"] + "'";
        obj.fillGrid(GridView3, s);
    }
    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "rej")
        {
            string id = e.CommandArgument.ToString();

            string up = "update tbl_employeerequest set empr_vstatus='Rejected' where empr_id='" + id + "'";
            obj.executeQuery(up);
            Response.Redirect("RequestStatus.aspx");

        }
    }
    protected void GridView3_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "ac")
        {
            string id = e.CommandArgument.ToString();

            string up = "update tbl_employeerequest set empr_vstatus='Accepted' where empr_id='" + id + "'";
            obj.executeQuery(up);
            Response.Redirect("RequestStatus.aspx");

        }
    }
}
