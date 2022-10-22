<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="ViewUserComplaints.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 327%;
        }
        .auto-style2 {
            width: 164px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">User Complaint</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="user_username" HeaderText="User Username" />
                        <asp:BoundField DataField="complaint_title" HeaderText="Complaint Title" />
                        <asp:BoundField DataField="complaint_content" HeaderText="Complaint Content" />
                        <asp:BoundField DataField="complaint_senddate" HeaderText="Date" />
                        <asp:TemplateField HeaderText="Reply">
                            <ItemTemplate>
                                <asp:LinkButton ID="linkReply" runat="server" CommandArgument='<%# Eval("complaint_id") %>' CommandName="rply">Reply</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Panel ID="Panel1" runat="server">
                    <table class="auto-style1">
                        <tr>
                            <td>Reply</td>
                            <td>
                                <asp:TextBox ID="txtReply" runat="server" Width="250px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td></td>
        </tr>
    </table>
</asp:Content>

