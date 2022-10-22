<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/GuestMasterPage.master" AutoEventWireup="true" CodeFile="NewInstitution.aspx.cs" Inherits="Guest_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1" align="center">
         <tr>
            <td class="auto-style2">Institution Type</td>
            <td>
                <asp:DropDownList ID="Ddl_institutiontype" runat="server" Width="220px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">District</td>
            <td>
                <asp:DropDownList ID="Ddl_district" runat="server" Width="220px" AutoPostBack="True" OnSelectedIndexChanged="Ddl_district_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Place</td>
            <td>
                <asp:DropDownList ID="Ddl_place" runat="server" Width="220px">
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
            <td class="auto-style2">License Number</td>
            <td>
                <asp:TextBox ID="Txt_licensenumber" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        
        <tr>
            <td class="auto-style2">Pin Code</td>
            <td>
                <asp:TextBox ID="Txt_pincode" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Username</td>
            <td>
                <asp:TextBox ID="Txt_username" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Password</td>
            <td>
                <asp:TextBox ID="Txt_password" runat="server" TextMode="Password" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Repassword</td>
            <td>
                <asp:TextBox ID="Txt_repassword" runat="server" TextMode="Password" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Photo</td>
            <td>
                <asp:FileUpload ID="Flup_photo" runat="server" Width="220px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">License Photo</td>
            <td>
                <asp:FileUpload ID="Flop_licensephoto" runat="server" Width="220px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="Btn_signin" runat="server" OnClick="Btn_signin_Click" Text="Sign in" Width="110px" />
                <asp:Button ID="Btn_cancel" runat="server" Text="Cancel" Width="110px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style4">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

