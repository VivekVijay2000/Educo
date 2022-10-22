using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Institution_Default : System.Web.UI.Page
{
    cls_MainProject obj = new cls_MainProject();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string s = "select * from tbl_admission a inner join tbl_user u on a.user_id=u.user_id inner join tbl_course c on c.course_id=a.course_id where c.institution_id='" + Session["lgid"] + "'";
            obj.FillGridView(s, GridView1);
        }
    }
}