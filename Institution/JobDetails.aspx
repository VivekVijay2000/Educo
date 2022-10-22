<%@ Page Title="" Language="C#" MasterPageFile="~/Institution/InstitutionMasterPage.master" AutoEventWireup="true" CodeFile="JobDetails.aspx.cs" Inherits="Agency_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 310px;
        }
        .auto-style3 {
            width: 310px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style6 {
            width: 129px;
            height: 26px;
        }
        .auto-style7 {
            width: 129px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style7">Job Type</td>
            <td>
                <asp:DropDownList ID="ddlServiceType" runat="server" Width="250px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style6">Job Name</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtService" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style6">Description</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtDescription" runat="server" Width="255px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style6">Basic Salary</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtRate" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" Width="90px" />
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" Width="90px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style4">
                <asp:GridView ID="grdDetails" runat="server" AutoGenerateColumns="False" OnRowCommand="grdDetails_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="jobtype_name" HeaderText="JobType" />
                        <asp:BoundField DataField="job_name" HeaderText="Job Name" />
                        <asp:BoundField DataField="description" HeaderText="Description" />
                        <asp:BoundField DataField="job_basicsalary" HeaderText="Salary" />
                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:LinkButton ID="linkDelete" runat="server" CommandArgument='<%# Eval("job_id") %>' CommandName="del">Delete</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style6"></td>
            <td class="auto-style4"></td>
        </tr>
    </table>
</asp:Content>

