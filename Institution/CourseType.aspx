<%@ Page Title="" Language="C#" MasterPageFile="~/Institution/InstitutionMasterPage.master" AutoEventWireup="true" CodeFile="CourseType.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1
        {
            width: 100%;
        }
        .auto-style2
        {
            width: 109px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">Course Type</td>
            <td>
                <asp:TextBox ID="Txt_typename" runat="server"  Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="save" runat="server" OnClick="save_Click" Text="Save" Width="110px" />
                <asp:Button ID="Btn_cancel" runat="server" OnClick="Btn_cancel_Click" Text="Cancel" Width="110px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:GridView ID="Grd_coursetype" runat="server" AutoGenerateColumns="False" OnRowCommand="Grd_coursetype_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="coursetype_name" HeaderText="Course Type" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("coursetype_id") %>' CommandName="del">Delete</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

