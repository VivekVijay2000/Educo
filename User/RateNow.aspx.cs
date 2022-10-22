using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Default : System.Web.UI.Page
{
    cls_MainProject obj = new cls_MainProject();
    public static int id, flag = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
     
      
        if(!IsPostBack)
        {
           
            fillgrid();
           
        }
    }
   

    protected void btndistrict_Click(object sender, EventArgs e)
    {


            string ins = "insert into tbl_rating(rate_comment,rate_value,user_id,institution_id,rate_date)values('" + txtPlace.Text + "','" + ddistrict.Text + "','"+Session["lgid"]+"','"+Session["sid"]+"','"+DateTime.Now.ToShortDateString()+"')";
            obj.ExecuteCommand(ins);
            fillgrid();
            txtPlace.Text = "";
            ddistrict.ClearSelection();
        
    
    }
    public void fillgrid()
    {
        string sel = "select * from tbl_rating pl inner join tbl_user d on pl.user_id=d.user_id where pl.institution_id='" + Session["sid"] + "'";
        obj.FillGridView(sel, grddis);
    }
    protected void btnedit_Click(object sender, EventArgs e)
    {

        
    }
  

protected void btncancel_Click(object sender, EventArgs e)
{
    txtPlace.Text = "";
    flag = 0;
}

protected void grddis_RowCommand(object sender, GridViewCommandEventArgs e)
{

}
protected void grddis_PageIndexChanging(object sender, GridViewPageEventArgs e)
{
    grddis.PageIndex = e.NewPageIndex;

    fillgrid();
}
protected void btnCancel_Click(object sender, EventArgs e)
{
    txtPlace.Text = "";
}
}