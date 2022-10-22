using System;
using System.Collections.Generic;
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
            string s = "select * from tbl_employeerequest r inner join tbl_institution a on a.institution_id=r.institution_id inner join tbl_job j on j.job_id=r.job_id where r.employee_id='" + Session["Elgid"] + "'";
            obj.fillGrid(GridView1, s);
        }
    }
}