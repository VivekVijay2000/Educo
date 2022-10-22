using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class Employee_Default : System.Web.UI.Page
{
    cls_MainProject obj = new cls_MainProject();
    public static int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillGrid();
            Panel1.Visible = false;
            string s="select * from tbl_district";
            obj.fillDDL(DropDownList1, "district_name", "district_id",s);
        }
    }
    protected void fillGrid()
    {
        string selQry = "select * from tbl_institution a inner join tbl_place e  on a.place_id=e.place_id where a.institution_status=1";
        obj.fillDataList(DataList1, selQry);
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "request")
        {
            Panel1.Visible = true;
            Session["request"] = id;
            string s = "select * from tbl_job where institution_id='" + Session["request"] + "'";
            obj.fillDDL(DropDownList2, "job_name", "job_id", s);
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        string id1 = Path.GetFileName(flupFile.PostedFile.FileName.ToString());
        flupFile.SaveAs(Server.MapPath("../Photos/" + id1));
        string insQry = "insert into tbl_employeerequest (institution_id,employee_id,empr_date,empr_resume,empr_experience,empr_vstatus,job_id) values('" + Session["request"] + "','" + Session["Elgid"] + "','" + DateTime.Now.ToShortDateString() + "','" + id1 + "','" + txtExp.Text + "','Pending','"+DropDownList2.SelectedValue+"')";
        obj.executeQuery(insQry);
        txtExp.Text = "";
        fillGrid();
        txtExp.Text = "";
        Panel1.Visible = false;
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string s = "select * from tbl_institution a inner join tbl_place p on a.place_id=p.place_id where p.district_id='" + DropDownList1.SelectedValue + "'";
        obj.fillDataList(DataList1, s);
    }
}