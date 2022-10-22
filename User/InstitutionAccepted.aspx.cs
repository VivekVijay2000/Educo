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
      
       if (!IsPostBack)
       {
           fillgrid();
           fillDistrict();
       }
   }
   public void fillgrid()
   {
       string sel = "select * from tbl_institution s inner join tbl_place p on s.place_id=p.place_id where s.institution_status='1'";
       obj.FillGridView(sel, grdtype);
   }

   protected void grdtype_RowCommand(object sender, GridViewCommandEventArgs e)
   {
       int sid = Convert.ToInt32(e.CommandArgument.ToString());
       if (e.CommandName == "ratenow")
       {
           Session["sid"] = sid.ToString();
           Response.Redirect("RateNow.aspx");
       }

       if (e.CommandName == "sp")
       {
           Session["sid"] = sid.ToString();
           Response.Redirect("CourseDetails.aspx");
       }
      

   }

   public void fillDistrict()
   {
      // string sel = "select * from tbl_district";
       obj.FillDrop(ddistrict, "district_name", "district_id", "tbl_district");
   }

   protected void grdtype_PageIndexChanging(object sender, GridViewPageEventArgs e)
   {
       grdtype.PageIndex = e.NewPageIndex;
       fillgrid();
   }
   protected void ddistrict_SelectedIndexChanged(object sender, EventArgs e)
   {
       string sel = "select * from tbl_institution s inner join tbl_place p on s.place_id=p.place_id where p.district_id='" + ddistrict.SelectedValue + "' and s.institution_status='1'";
       obj.FillGridView(sel, grdtype);
   }
}

