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
        string selQry = "select * from tbl_daycare a inner join tbl_place p on p.place_id=a.place_id inner join tbl_job j on j.daycare_id=a.daycare_id where a.daycare_status=1";
        obj.fillGrid(GridView1, selQry);
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
       
    }
}