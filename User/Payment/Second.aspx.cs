using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Payment_Default : System.Web.UI.Page
{
    cls_MainProject obj = new cls_MainProject();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
            lblCardNumber.Text  = Session["accno"].ToString();

            lbl_Payto.Text ="institution@studnet.com";
            lbl_Amount.Text = Session["amount"].ToString();
        }
    }

    protected void lblCopyIt_Click(object sender, EventArgs e)
    {
        //Code to copy address from table
        string str = "select (u.user_name) as name,* from tbl_user u where  u.user_id=" + Session["lgid"] + "";
        DataTable dt = obj.GetDataTable(str);
        if (dt.Rows.Count > 0)
        {
            txtName.Text = dt.Rows[0]["name"].ToString();
            txtAddress.Text = dt.Rows[0]["user_address"].ToString();
            //txtPlace.Text = dt.Rows[0]["user_place"].ToString();
            //txtState.Text = "Kerala";
            txtEmail.Text = dt.Rows[0]["user_email"].ToString();
            txtPhone.Text = dt.Rows[0]["user_contact"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Third.aspx");
    }

}