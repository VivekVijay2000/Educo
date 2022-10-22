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
    public static int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            viewDetails();
        }
    }
    protected void viewDetails()
    {
        string selQry = "select * from tbl_employee where employee_status=1";
        obj.fillGrid(grdDetails,selQry);
    }
    protected void grdDetails_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "rej")
        {
            string del = "update tbl_employee set employee_status=2 where employee_id='" + id + "'";
            obj.executeQuery(del);
            viewDetails();
        }
        //if (e.CommandName == "accept")
        //{
        //    string upQry = "update tbl_employee set employee_status=1 where employee_id='" + id + "'";
        //    obj.executeQuery(upQry);
        //    viewDetails();
        //}
    }
}