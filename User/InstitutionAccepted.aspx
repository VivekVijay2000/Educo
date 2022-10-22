<%@ Page Title="" Language="C#" MasterPageFile="~/User/GuestMaster.master" AutoEventWireup="true" CodeFile="InstitutionAccepted.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 317px;
        }
        .auto-style2 {
            width: 314px;
        }
        .auto-style3 {
            width: 109px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>Select District</td>
            <td>
                <asp:DropDownList ID="ddistrict" runat="server" Width="225px" AutoPostBack="True" OnSelectedIndexChanged="ddistrict_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td colspan="2">
                <asp:GridView ID="grdtype" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" Height="93px" OnRowCommand="grdtype_RowCommand"  Width="539px" AllowPaging="True" >
                    <Columns>
                        <asp:BoundField DataField="place_name" HeaderText="PlaceName" />
                        <asp:BoundField DataField="institution_name" HeaderText="Name" />
                        <asp:BoundField DataField="institution_contact" HeaderText="ContactNumber" />
                        <asp:BoundField DataField="institution_email" HeaderText="EmailID" />
                        <asp:BoundField DataField="institution_address" HeaderText="Address" />
                        <asp:BoundField DataField="institution_pincode" HeaderText="Pincode" />

                                <asp:TemplateField>
                            <ItemTemplate>
                              
                                <table class="nav-justified">
                                    <tr>
                                        <td class="auto-style3">
                                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandArgument='<%# Eval("institution_id") %>' CommandName="sp">CourseDetails</asp:LinkButton>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>
                                            <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandArgument='<%# Eval("institution_id") %>' CommandName="ratenow">RateNow</asp:LinkButton>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>


                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#487575" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#275353" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>


