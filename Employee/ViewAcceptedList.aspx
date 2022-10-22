<%@ Page Title="" Language="C#" MasterPageFile="~/Employee/EmployeeMaster.master" AutoEventWireup="true" CodeFile="ViewAcceptedList.aspx.cs" Inherits="Admin_Default" %>

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
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
                    <Columns>
                        <%--<asp:BoundField DataField="daycare_id" HeaderText="Agency Id" />--%>
                         <asp:BoundField DataField="job_name" HeaderText="Job Name" />
                         <asp:BoundField DataField="description" HeaderText="Details" />
                         <asp:BoundField DataField="job_basicsalary" HeaderText="Basic Salary" />

                        <asp:BoundField DataField="daycare_name" HeaderText="Agency Name" />
                        <asp:BoundField DataField="daycare_contact" HeaderText="Agency Contact" />
                        <asp:BoundField DataField="daycare_email" HeaderText="Agency Email" />
                        <asp:BoundField DataField="daycare_address" HeaderText="Agency Address" />
                        <asp:BoundField DataField="place_name" HeaderText="Place" />
                        <asp:TemplateField HeaderText="License">
                            <ItemTemplate>
                                <img src="../Photos/<%#Eval("daycare_license") %>" width="60" height="60"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Proof">
                            <ItemTemplate>
                                <img src="../Photos/<%#Eval("daycare_proof") %>" width="60" height="60"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Logo">
                            <ItemTemplate>
                                <img src="../Photos/<%#Eval("daycare_logo") %>" width="60" height="60"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="daycare_doj" HeaderText="StartDate" />
                        <%--<asp:TemplateField HeaderText="Reject">
                            <ItemTemplate>
                                <asp:LinkButton ID="linkReject" runat="server" CommandArgument='<%# Eval("daycare_id") %>' CommandName="rej">Reject</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>--%>
                    </Columns>
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

