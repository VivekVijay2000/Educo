using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Default : System.Web.UI.Page
{
    cls_MainProject obj = new cls_MainProject();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string s = "select * from tbl_admission a inner join tbl_course c on a.course_id=c.course_id inner join tbl_coursetype t on t.coursetype_id=c.coursetype_id inner join tbl_institution it on it.institution_id=c.institution_id where a.user_id='" + Session["lgid"] + "'";
            obj.FillGridView(s, GridView1);
        }

    }
}