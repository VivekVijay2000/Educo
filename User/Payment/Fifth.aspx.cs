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

        if (!Page.IsPostBack)
        {
            
            lblDate.Text = DateTime.Now.ToShortDateString();
            lblAmoubnt.Text = Session["amount"].ToString();
          
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {


       string strIsb = GetISB();

       string up = "insert into tbl_admission(user_id,course_id,admission_date,admission_refnumber)values('" + Session["lgid"] + "','" + Session["cid"] + "','" + DateTime.Now.ToShortDateString() + "','" + strIsb + "')";
        obj.ExecuteCommand(up);


        Response.Redirect("~/User/HomePage.aspx");


    }
    private string GetISB()
    {
        string allowedChars = "";

        // allowedChars += "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,";
        allowedChars += "1,2,3,4,5,6,7,8,9,0";

        char[] sep = { ',' };
        string[] arr = allowedChars.Split(sep);

        string passwordString = "";

        string temp = "";

        Random rand = new Random();
        for (int i = 0; i < 4; i++)
        {
            temp = arr[rand.Next(0, arr.Length)];
            passwordString += temp;
        }
        return ("M-" + passwordString);

    }
}