<%@ Page Title="" Language="C#" MasterPageFile="~/Employee/EmployeeMaster.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="Employee_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 225px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">Old Password</td>
            <td>
                <asp:TextBox ID="txtOld" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">New Password</td>
            <td>
                <asp:TextBox ID="txtNewpass" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Confirm&nbsp; Password</td>
            <td>
                <asp:TextBox ID="txtCpass" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" Width="90px" />
            </td>
        </tr>
    </table>
</asp:Content>

