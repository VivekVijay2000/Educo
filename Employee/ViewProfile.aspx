<%@ Page Title="" Language="C#" MasterPageFile="~/Employee/EmployeeMaster.master" AutoEventWireup="true" CodeFile="ViewProfile.aspx.cs" Inherits="Employee_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" Height="50px" Width="125px">
        <Fields>
            <asp:TemplateField HeaderText="Photo">
                <ItemTemplate>
                    <img src="../Photos/<%#Eval("employee_photo") %>" width="120" height="120"/>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="employee_name" HeaderText="Employee Name" />
            <asp:BoundField DataField="employee_contact" HeaderText="Contact" />
            <asp:BoundField DataField="employee_email" HeaderText="Email" />
            <asp:BoundField DataField="employee_address" HeaderText="Address" />
            <asp:BoundField DataField="employee_gender" HeaderText="Gender" />
            <asp:BoundField DataField="employee_dob" HeaderText="Date Of Birth" />
        </Fields>
    </asp:DetailsView>
</asp:Content>

