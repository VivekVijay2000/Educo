using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;


public partial class Guest_Default : System.Web.UI.Page
{
    public static int id = 0;
     SqlConnection con = new SqlConnection("Data Source=LAPTOP-A0HJ1CDM;Initial Catalog=db_student;Integrated Security=True");

//    SqlConnection con = new SqlConnection("Data Source=DREAM;Initial Catalog=db_student;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        if (!IsPostBack)
        {
            fillDistrict();
            
           
        }
    }
    protected void Btn_signup_Click(object sender, EventArgs e)
    {
        string pic = Path.GetFileName(Flup_photo.PostedFile.FileName.ToString()); //Find File Name
        Flup_photo.SaveAs(Server.MapPath("../Assets/Userpic/" + pic));//Save file to Server



        string ins = "insert into tbl_user(user_name,user_contact,user_email,user_gender,place_id,user_address,user_bio,user_photo,user_username,user_password,user_doj)values('" + Txt_name.Text + "','" + Txt_contact.Text + "','" + Txt_email.Text + "','" + Rdl_gender.SelectedValue + "','" + Ddl_place.SelectedValue + "','" + Txt_address.Text + "','" + Txt_bio.Text + "','" + pic + "','" + Txt_username.Text + "','" + Txt_password.Text + "','" + DateTime.Now.ToShortDateString() + "')";
        SqlCommand cmd = new SqlCommand(ins, con);
        cmd.ExecuteNonQuery();
        Txt_address.Text = "";
        Txt_bio.Text = "";
        Txt_contact.Text = "";
        Txt_email.Text = "";
      
        Txt_name.Text = "";
        Txt_password.Text = "";
       
        Txt_repassword.Text = "";
        Txt_username.Text = "";
        Ddl_district.ClearSelection();
       
        Ddl_place.ClearSelection();

        Label1.Text = "Succesffuly Registered....";
    }

    public void fillDistrict()
    {
        string sel = "select * from tbl_district";
        SqlDataAdapter adp = new SqlDataAdapter(sel, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        Ddl_district.DataSource = dt;
        Ddl_district.DataTextField = "district_name";
        Ddl_district.DataValueField = "district_id";
        Ddl_district.DataBind();
        Ddl_district.Items.Insert(0, "--select--");
    }

    protected void Ddl_district_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sel = "select * from tbl_place where district_id='"+Ddl_district.SelectedValue+"'";
        SqlDataAdapter adp = new SqlDataAdapter(sel, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        Ddl_place.DataSource = dt;
        Ddl_place.DataTextField = "place_name";
        Ddl_place.DataValueField = "place_id";
        Ddl_place.DataBind();
        Ddl_place.Items.Insert(0, "--select--");
    }
}