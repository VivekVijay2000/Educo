<%@ Page Title="" Language="C#" MasterPageFile="~/Employee/EmployeeMaster.master" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="Employee_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 193px;
        }
        .auto-style3 {
            width: 193px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
         <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">Contact</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtContact" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">Email</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtEmail" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">Address</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtAddress" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
     <%--   <tr>
            <td class="auto-style3">Photo</td>
            <td class="auto-style4">
                <asp:FileUpload ID="flupPhoto" runat="server" Width="250px" />
            </td>
        </tr>--%>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="btnUpdate" runat="server" Text="Save" Width="90px" OnClick="btnUpdate_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

