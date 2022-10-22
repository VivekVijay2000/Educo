<%@ Page Title="" Language="C#" MasterPageFile="~/Institution/InstitutionMasterPage.master" AutoEventWireup="true" CodeFile="RequestStatus.aspx.cs" Inherits="Employee_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="nav-justified">
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="New Request" Width="220px" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Accepted Request" Width="220px" OnClick="Button2_Click" />
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" Text="Rejected Request" Width="220px" OnClick="Button3_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="4">
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnRowCommand="GridView1_RowCommand" EmptyDataText="No Record Found!!!">
                            <Columns>
                                <asp:BoundField DataField="employee_name" HeaderText="Name" />
                                <asp:BoundField DataField="employee_contact" HeaderText="ContactNumber" />
                                <asp:BoundField DataField="employee_email" HeaderText="EmailID" />
                                <asp:BoundField DataField="employee_address" HeaderText="Address" />
                                <asp:BoundField DataField="place_name" HeaderText="PlaceName" />
                                <%--<asp:BoundField DataField="employee_dob" HeaderText="DOB" />--%>
                                <asp:BoundField DataField="job_name" HeaderText="JobName" />
                                 <asp:BoundField DataField="empr_experience" HeaderText="Experience" />
                                <asp:BoundField DataField="empr_date" HeaderText="RequestDate" />
                                 <asp:TemplateField HeaderText="Photo">
                            <ItemTemplate>
                               <img src="../Photos/<%#Eval("employee_photo") %>" width="50" height="50"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                                <asp:TemplateField HeaderText="Resume">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("empr_resume") %>' CommandName="dw2">download</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                                      <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:LinkButton ID="linkDelete" runat="server" CommandArgument='<%# Eval("empr_id") %>' CommandName="ac">Accept</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <asp:LinkButton ID="linkEdit" runat="server" CommandArgument='<%# Eval("empr_id") %>' CommandName="rej">Reject</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                            </Columns>
                            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                            <RowStyle BackColor="White" ForeColor="#330099" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                            <SortedAscendingCellStyle BackColor="#FEFCEB" />
                            <SortedAscendingHeaderStyle BackColor="#AF0101" />
                            <SortedDescendingCellStyle BackColor="#F6F0C0" />
                            <SortedDescendingHeaderStyle BackColor="#7E0000" />
                        </asp:GridView>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnRowCommand="GridView2_RowCommand" EmptyDataText="No Record Found!!!">
                            <Columns>
                                  <asp:BoundField DataField="employee_name" HeaderText="Name" />
                                <asp:BoundField DataField="employee_contact" HeaderText="ContactNumber" />
                                <asp:BoundField DataField="employee_email" HeaderText="EmailID" />
                                <asp:BoundField DataField="employee_address" HeaderText="Address" />
                                <asp:BoundField DataField="place_name" HeaderText="PlaceName" />
                                <%--<asp:BoundField DataField="employee_dob" HeaderText="DOB" />--%>
                                <asp:BoundField DataField="job_name" HeaderText="JobName" />
                                 <asp:BoundField DataField="empr_experience" HeaderText="Experience" />
                                <asp:BoundField DataField="empr_date" HeaderText="RequestDate" />
                                 <asp:TemplateField HeaderText="Photo">
                            <ItemTemplate>
                               <img src="../Photos/<%#Eval("employee_photo") %>" width="50" height="50"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                                <asp:TemplateField HeaderText="Resume">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%# Eval("empr_resume") %>' CommandName="dw2">download</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <%--<asp:TemplateField HeaderText="Delete">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="linkDelete0" runat="server" CommandArgument='<%# Eval("empr_id") %>' CommandName="ac">Accept</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>--%>
                                <asp:TemplateField HeaderText="Edit">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="linkEdit0" runat="server" CommandArgument='<%# Eval("empr_id") %>' CommandName="rej">Reject</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                            <RowStyle BackColor="White" ForeColor="#330099" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                            <SortedAscendingCellStyle BackColor="#FEFCEB" />
                            <SortedAscendingHeaderStyle BackColor="#AF0101" />
                            <SortedDescendingCellStyle BackColor="#F6F0C0" />
                            <SortedDescendingHeaderStyle BackColor="#7E0000" />
                        </asp:GridView>
                    </asp:View>
                    <asp:View ID="View3" runat="server">
                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnRowCommand="GridView3_RowCommand" EmptyDataText="No Record Found!!!">
                            <Columns>
                                <asp:BoundField DataField="employee_name" HeaderText="Name" />
                                <asp:BoundField DataField="employee_contact" HeaderText="ContactNumber" />
                                <asp:BoundField DataField="employee_email" HeaderText="EmailID" />
                                <asp:BoundField DataField="employee_address" HeaderText="Address" />
                                <asp:BoundField DataField="place_name" HeaderText="PlaceName" />
                                <%--<asp:BoundField DataField="employee_dob" HeaderText="DOB" />--%>
                                <asp:BoundField DataField="job_name" HeaderText="JobName" />
                                 <asp:BoundField DataField="empr_experience" HeaderText="Experience" />
                                <asp:BoundField DataField="empr_date" HeaderText="RequestDate" />
                                 <asp:TemplateField HeaderText="Photo">
                            <ItemTemplate>
                               <img src="../Photos/<%#Eval("employee_photo") %>" width="50" height="50"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                                <asp:TemplateField HeaderText="Resume">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton4" runat="server" CommandArgument='<%# Eval("empr_resume") %>' CommandName="dw2">download</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Delete">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="linkDelete0" runat="server" CommandArgument='<%# Eval("empr_id") %>' CommandName="ac">Accept</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <%--<asp:TemplateField HeaderText="Edit">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="linkEdit1" runat="server" CommandArgument='<%# Eval("empr_id") %>' CommandName="rej">Reject</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>--%>
                            </Columns>
                            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                            <RowStyle BackColor="White" ForeColor="#330099" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                            <SortedAscendingCellStyle BackColor="#FEFCEB" />
                            <SortedAscendingHeaderStyle BackColor="#AF0101" />
                            <SortedDescendingCellStyle BackColor="#F6F0C0" />
                            <SortedDescendingHeaderStyle BackColor="#7E0000" />
                        </asp:GridView>
                    </asp:View>
                    <asp:View ID="View4" runat="server">
                    </asp:View>
                </asp:MultiView>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

