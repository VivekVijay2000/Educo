<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="ViewRejectedEmployeeList.aspx.cs" Inherits="Admin_Default" %>

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
                <asp:GridView ID="grdDetails" runat="server" AutoGenerateColumns="False" OnRowCommand="grdDetails_RowCommand" EmptyDataText="No Record Found!!!">
                    <Columns>
                       <%-- <asp:BoundField DataField="agency_id" HeaderText="Agency Id" />--%>
                        <asp:BoundField DataField="employee_name" HeaderText="Name" />
                        <asp:BoundField DataField="employee_contact" HeaderText="Contact" />
                        <asp:BoundField DataField="employee_email" HeaderText="Email" />
                        <asp:BoundField DataField="employee_address" HeaderText="Address" />
                        <asp:BoundField DataField="employee_doj" HeaderText="DOJ" />
                        <asp:TemplateField HeaderText="Photo">
                            <ItemTemplate>
                               <img src="../Photos/<%#Eval("employee_photo") %>" width="60" height="60"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Proof">
                            <ItemTemplate>
                                <img src="../Photos/<%#Eval("employee_idproof1") %>" width="60" height="60"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Proof">
                            <ItemTemplate>
                                <img src="../Photos/<%#Eval("employee_idproof2") %>" width="60" height="60"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Accept">
                            <ItemTemplate>
                                <asp:LinkButton ID="linkAccept" runat="server" CommandArgument='<%# Eval("employee_id") %>' CommandName="accept">Accept</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    <%--    <asp:TemplateField HeaderText="Reject">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkReject" runat="server" CommandArgument='<%# Eval("employee_id") %>' CommandName="rej">Reject</asp:LinkButton>
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

