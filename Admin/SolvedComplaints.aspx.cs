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
    public static int id = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillComplaint();
           // Panel1.Visible = false;
        }
    }
    protected void fillComplaint()
    {
        string selQry = "select * from tbl_complaint c inner join tbl_complainttype ct on c.complainttype_id=ct.complainttype_id inner join tbl_user u on u.user_id=c.user_id where c.complaint_vstatus=1";
        obj.fillGrid(GridView1,selQry);
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
       
    }
    
}