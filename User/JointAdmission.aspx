<%@ Page Title="" Language="C#" MasterPageFile="~/User/GuestMaster.master" AutoEventWireup="true" CodeFile="JointAdmission.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1
    {
        width: 286px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="nav-justified">
    <tr>
        <td class="auto-style1">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns>

                    <asp:BoundField DataField="admission_refnumber" HeaderText="Admission Refnumber" />
                    <asp:BoundField DataField="admission_date" HeaderText="Admission Date" />
                    
                    <asp:BoundField DataField="course_name" HeaderText="Course Name" />
                    <asp:BoundField DataField="coursetype_name" HeaderText="CourseType Name" />
                    <asp:BoundField DataField="institution_name" HeaderText="Institution Name" />
                    <asp:BoundField DataField="institution_contact" HeaderText="Institution contact" />
                    <asp:BoundField DataField="institution_email" HeaderText="Institution email" />
                    <asp:BoundField DataField="course_duration" HeaderText="Course Duration" />
                    <asp:BoundField DataField="course_rate" HeaderText="Course rate" />
                    <asp:BoundField DataField="course_downpayment" HeaderText="Course Downpayment" />
                    
                </Columns>
            </asp:GridView>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

