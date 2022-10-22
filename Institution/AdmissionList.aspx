<%@ Page Title="" Language="C#" MasterPageFile="~/Institution/InstitutionMasterPage.master" AutoEventWireup="true" CodeFile="AdmissionList.aspx.cs" Inherits="Institution_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1
    {
        width: 122px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="nav-justified">
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="user_name" HeaderText="User Name" />
                    <asp:BoundField DataField="user_contact" HeaderText="User Contact" />
                    <asp:BoundField DataField="user_email" HeaderText="User Email" />
                    <asp:BoundField DataField="admission_date" HeaderText="Admission Date" />
                    <asp:BoundField DataField="admission_id" HeaderText="Admission Id" />
                </Columns>
            </asp:GridView>
        </td>
    </tr>
</table>
</asp:Content>

