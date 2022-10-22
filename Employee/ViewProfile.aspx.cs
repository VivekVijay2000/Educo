using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Employee_Default : System.Web.UI.Page
{
    cls_MainProject obj = new cls_MainProject();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillGrid();
        }
    }
    protected void fillGrid()
    {
        string sel = "select * from tbl_employee where employee_id='" + Session["Elgid"].ToString() + "'";
        DataTable dt = new DataTable();
        dt = obj.selectQuery(sel);
        DetailsView1.DataSource = dt;
        DetailsView1.DataBind();
    }
}