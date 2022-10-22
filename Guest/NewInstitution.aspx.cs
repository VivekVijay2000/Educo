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
    //SqlConnection con = new SqlConnection("Data Source=DREAM;Initial Catalog=db_student;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        if (!IsPostBack)
        {
            fillDistrict();
            fillType();

        }
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
    public void fillType()
    {
        string sel = "select * from tbl_institutiontype";
        SqlDataAdapter adp = new SqlDataAdapter(sel, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        Ddl_institutiontype.DataSource = dt;
        Ddl_institutiontype.DataTextField = "institutiontype_name";
        Ddl_institutiontype.DataValueField = "institutiontype_id";
        Ddl_institutiontype.DataBind();
        Ddl_institutiontype.Items.Insert(0, "--select--");
    }
    protected void Btn_signin_Click(object sender, EventArgs e)
    {
        string pic = Path.GetFileName(Flup_photo.PostedFile.FileName.ToString()); //Find File Name
        Flup_photo.SaveAs(Server.MapPath("../Assets/InstitutionDocs/" + pic));//Save file to Server

        string licImage = Path.GetFileName(Flop_licensephoto.PostedFile.FileName.ToString()); //Find File Name
        Flop_licensephoto.SaveAs(Server.MapPath("../Assets/InstitutionDocs/" + licImage));//Save file to Server



        string ins = "insert into tbl_institution(institution_name,institution_contact,institution_email,institution_photo,place_id,institution_address,institution_bio,institution_licenseno,institution_licensephoto,institution_status,institution_pincode,institution_username,institution_password,institution_doj,institutiontype_id)values('" + Txt_name.Text + "','" + Txt_contact.Text + "','" + Txt_email.Text + "','" + pic + "','" + Ddl_place.SelectedValue + "','" + Txt_address.Text + "','" + Txt_bio.Text + "','" + Txt_licensenumber.Text + "','" + licImage + "','0','" + Txt_pincode.Text + "','" + Txt_username.Text + "','" + Txt_password.Text + "','" + DateTime.Now.ToShortDateString() + "','" + Ddl_institutiontype.SelectedValue + "')";
        SqlCommand cmd = new SqlCommand(ins, con);
        cmd.ExecuteNonQuery();

        Txt_address.Text = "";
        Txt_bio.Text = "";
        Txt_contact.Text = "";
        Txt_email.Text = "";
        Txt_licensenumber.Text = "";
        Txt_name.Text = "";
        Txt_password.Text = "";
        Txt_pincode.Text = "";
        Txt_repassword.Text = "";
        Txt_username.Text = "";
        Ddl_district.ClearSelection();
        Ddl_institutiontype.ClearSelection();
        Ddl_place.ClearSelection();

        Label1.Text = "Succesffuly Registered....";

    }
    protected void Ddl_district_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sel = "select * from tbl_place where district_id='" + Ddl_district.SelectedValue + "'";
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