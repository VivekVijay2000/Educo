<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/GuestMasterPage.master" AutoEventWireup="true" CodeFile="EmployeeRegistration.aspx.cs" Inherits="Guest_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <table align="center">
        <tr>
            <td class="auto-style2"> Name</td>
            <td>
                <asp:TextBox ID="txtName" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Contact</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtContact" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Email</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Address</td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server" Width="250px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Gender</td>
            <td>
                <asp:RadioButtonList ID="radioGender" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Date Of Birth</td>
            <td>
                <asp:TextBox ID="txtDob" runat="server" Width="250px" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Place</td>
            <td>
                <asp:DropDownList ID="ddlPlace" runat="server" Width="250px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Username</td>
            <td>
                <asp:TextBox ID="txtUsername" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Password</td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" Width="250px" TextMode="Password" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Confirm Password</td>
            <td>
                <asp:TextBox ID="txtCpassword" runat="server" Width="250px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Adhar ID</td>
            <td>
                <asp:FileUpload ID="flupId1" runat="server" Width="250px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Qualification Proof</td>
            <td>
                <asp:FileUpload ID="flupId2" runat="server" Width="250px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Photo</td>
            <td>
                <asp:FileUpload ID="flupPhoto" runat="server" Width="250px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="btnSave" runat="server" Text="Save" Width="90px" OnClick="btnSave_Click" />
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" Width="90px" OnClick="btnCancel_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

