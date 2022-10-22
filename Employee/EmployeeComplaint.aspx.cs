using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Employee_Default : System.Web.UI.Page
{
    cls_MainProject obj = new cls_MainProject();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillComplaintType();
            string s = "select * from tbl_complaint c inner join tbl_complainttype t on c.complainttype_id=t.complainttype_id where c.employee_id='" + Session["Elgid"] + "'";
            obj.fillGrid(GridView1, s);

        }
    }
    protected void fillComplaintType()
    {
        string selQry = "select * from tbl_complainttype";
        obj.fillDDL(ddlComplaintType, "complainttype_name", "complainttype_id", selQry);
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        string insQry = "insert into tbl_complaint(complainttype_id,complaint_title,complaint_content,complaint_senddate,complaint_vstatus,user_id,employee_id)values('" + ddlComplaintType.SelectedValue + "','" + txtComplaintTitle.Text + "','" + txtContent.Text + "','" + DateTime.Now.ToShortDateString() + "',0,'" + Session["Ulgid"] + "','" + Session["Elgid"] + "')";
        obj.executeQuery(insQry);
        clearSelection();

        string s = "select * from tbl_complaint c inner join tbl_complainttype t on c.complainttype_id=t.complainttype_id where c.employee_id='" + Session["Elgid"] + "'";
        obj.FillGridView(s, GridView1);
        
    }
    protected void clearSelection()
    {
        txtContent.Text = "";
        txtComplaintTitle.Text = "";
        ddlComplaintType.ClearSelection();
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        clearSelection();
    }
}
