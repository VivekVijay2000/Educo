<%@ Page Title="" Language="C#" MasterPageFile="~/User/GuestMaster.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 322px;
        }
        .auto-style3 {
            width: 134px
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">Old Password</td>
            <td>
                <asp:TextBox ID="txtOldpass" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">New Password</td>
            <td>
                <asp:TextBox ID="txtNewpass" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">Confirm Password</td>
            <td>
                <asp:TextBox ID="txtCpass" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:Button ID="btnSave" runat="server" Text="Save" Width="90px" OnClick="btnSave_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

