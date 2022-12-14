<%@ Page Title="" Language="C#" MasterPageFile="~/User/GuestMaster.master" AutoEventWireup="true" CodeFile="CourseDetails.aspx.cs" Inherits="Agency_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <%--<tr>
            <td class="auto-style3">File</td>
            <td class="auto-style4">
                <asp:FileUpload ID="flupFile" runat="server" Width="250px" />
            </td>
        </tr>--%>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style4">
                <asp:GridView ID="grdDetails" runat="server" AutoGenerateColumns="False" OnRowCommand="grdDetails_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="coursetype_name" HeaderText="CourseType" />
                        <asp:BoundField DataField="course_name" HeaderText="CourseName" />
                        <asp:BoundField DataField="course_duration" HeaderText="Duration" />
                        <asp:BoundField DataField="course_rate" HeaderText="Rate" />
                        <asp:BoundField DataField="course_downpayment" HeaderText="DownPayment" />
                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:LinkButton ID="linkDelete" runat="server" CommandArgument='<%# Eval("course_id") %>' CommandName="del">ApplyNow</asp:LinkButton>
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

