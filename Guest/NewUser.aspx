<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/GuestMasterPage.master" AutoEventWireup="true" CodeFile="NewUser.aspx.cs" Inherits="Guest_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1" align="center">
         <tr>
            <td class="auto-style5">District</td>
            <td class="auto-style6">
                <asp:DropDownList ID="Ddl_district" runat="server" Width="220px" AutoPostBack="True" OnSelectedIndexChanged="Ddl_district_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Place</td>
            <td>
                <asp:DropDownList ID="Ddl_place" runat="server" Width="220px">
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Name</td>
            <td>
                <asp:TextBox ID="Txt_name" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td class="auto-style2">Gender</td>
            <td>
                <asp:RadioButtonList ID="Rdl_gender" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Contact</td>
            <td>
                <asp:TextBox ID="Txt_contact" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Email</td>
            <td>
                <asp:TextBox ID="Txt_email" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
       
       
        <tr>
            <td class="auto-style2">Address</td>
            <td>
                <asp:TextBox ID="Txt_address" runat="server" TextMode="MultiLine" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Bio</td>
            <td>
                <asp:TextBox ID="Txt_bio" runat="server" TextMode="MultiLine" Width="220px"></asp:TextBox>
            </td>
        </tr>
        
        <tr>
            <td class="auto-style3">Username</td>
            <td class="auto-style4">
                <asp:TextBox ID="Txt_username" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Password</td>
            <td>
                <asp:TextBox ID="Txt_password" runat="server" Width="220px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Repassword</td>
            <td class="auto-style8">
                <asp:TextBox ID="Txt_repassword" runat="server" Width="220px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Photo</td>
            <td>
                <asp:FileUpload ID="Flup_photo" runat="server" Width="220px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="Btn_signup" runat="server" OnClick="Btn_signup_Click" Text="Sign up" Width="110px" />
                <asp:Button ID="Btncancel" runat="server" Text="Cancel" Width="110px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

