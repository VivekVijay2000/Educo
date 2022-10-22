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
            Panel1.Visible = false;
        }
    }
    protected void fillComplaint()
    {
        string selQry = "select * from tbl_complaint c inner join tbl_complainttype ct on c.complainttype_id=ct.complainttype_id inner join tbl_user u on u.user_id=c.user_id where c.complaint_vstatus=0";
        obj.fillGrid(GridView1,selQry);
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "rply")
        {
            Session["reply"] = id;
            Panel1.Visible = true;
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        string upQry = "update tbl_complaint set complaint_reply='" + txtReply.Text + "',complaint_vstatus=1 where complaint_id='" + Session["reply"] + "'";
        obj.executeQuery(upQry);
        Response.Write("<script>alert('Reply send to corresponding user')</script>");
        txtReply.Text = "";
        fillComplaint();
    }
}