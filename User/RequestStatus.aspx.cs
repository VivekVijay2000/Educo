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
           
            fillGrid();
        }
    }
  
   
   
    protected void fillGrid()
    {
        string selQry = "select * from tbl_coursetype s inner join tbl_course a on s.coursetype_id=a.coursetype_id where a.institution_id='" + Session["sid"].ToString() + "'";
        obj.FillGridView(selQry,grdDetails);
    }
    protected void grdDetails_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "del")
        {
            string s = "select * from tbl_course where course_id='" + id + "'";
            DataTable dt = obj.GetDataTable(s);
            if (dt.Rows.Count > 0)
            {
                Session["amount"] = dt.Rows[0]["course_downpayment"].ToString();
                Session["cid"] = e.CommandArgument.ToString();
                Response.Redirect("Payment/First.aspx");
            }
        }
    }
}