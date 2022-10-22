<%@ Page Title="" Language="C#" MasterPageFile="~/User/GuestMaster.master" AutoEventWireup="true" CodeFile="ViewProfile.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>
                <asp:DetailsView ID="dtProfile" runat="server" AutoGenerateRows="False" Height="50px" Width="125px">
                    <Fields>
                        <asp:BoundField DataField="user_name" HeaderText="Name" />
                        <asp:BoundField DataField="user_contact" HeaderText="Contact" />
                        <asp:BoundField DataField="user_email" HeaderText="Email" />
                        <asp:BoundField DataField="user_address" HeaderText="Address" />
                        <asp:BoundField DataField="user_gender" HeaderText="Gender" />
                    </Fields>
                </asp:DetailsView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Edit Profile" Width="220px" />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Change Password" Width="220px" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

