using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;

public partial class Guest_Default : System.Web.UI.Page
{
    cls_MainProject obj = new cls_MainProject();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillPlace();
        }
    }
    protected void fillPlace()
    {
        string selQry = "select * from tbl_place";
        obj.fillDDL(ddlPlace, "place_name", "place_id", selQry);
    }
    protected void clearSelection()
    {
        txtAddress.Text = "";
        txtContact.Text = "";
        txtCpassword.Text = "";
        txtEmail.Text = "";
        txtName.Text = "";
        txtPassword.Text = "";
        txtUsername.Text = "";
        ddlPlace.ClearSelection();
        radioGender.ClearSelection();
        txtDob.Text = "";
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        clearSelection();
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (txtPassword.Text == txtCpassword.Text)
        {
            string id1 = Path.GetFileName(flupId1.PostedFile.FileName.ToString());
            flupId1.SaveAs(Server.MapPath("../Photos/" + id1));
            string id2 = Path.GetFileName(flupId2.PostedFile.FileName.ToString());
            flupId2.SaveAs(Server.MapPath("../Photos/" + id2));
            string photo = Path.GetFileName(flupPhoto.PostedFile.FileName.ToString());
            flupPhoto.SaveAs(Server.MapPath("../Photos/" + id2));
            string insQry = "insert into tbl_employee(employee_name,employee_contact,employee_email,employee_address,employee_gender,employee_dob,place_id,employee_idproof1,employee_idproof2,employee_photo,employee_doj,employee_username,employee_password)values('" + txtName.Text + "','" + txtContact.Text + "','" + txtEmail.Text + "','" + txtAddress.Text + "','" + radioGender.SelectedValue + "','" + txtDob.Text + "','" + ddlPlace.SelectedValue + "','" + id1 + "','" + id2 + "','" + photo + "','" + DateTime.Now.ToShortDateString() + "','" + txtUsername.Text + "','" + txtPassword.Text + "')";
            obj.executeQuery(insQry);
            clearSelection();
        }
        else
        {
            Response.Write("<script>alert('Password Missmatch')</script>");
            clearSelection();
        }
    }
}