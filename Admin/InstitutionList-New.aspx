<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="InstitutionList-New.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:GridView ID="Grd_institutionlist" runat="server" AutoGenerateColumns="False"  OnRowCommand="Grd_institutionlist_RowCommand" Width="846px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" EmptyDataText="No Record Found!!!">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="institution_name" HeaderText="Name" />
                        <asp:BoundField DataField="institution_contact" HeaderText="Contact" />
                        <asp:BoundField DataField="institution_email" HeaderText="Email" />
                        <asp:BoundField DataField="institution_bio" HeaderText="Bio" />
                        <asp:BoundField DataField="institution_licenseno" HeaderText="Licenseno" />
                        <asp:BoundField DataField="institution_pincode" HeaderText="Pincode" />
                        <asp:BoundField DataField="institution_address" HeaderText="Address" />
                        <asp:BoundField DataField="institutiontype_name" HeaderText="Type" />
                        <asp:BoundField DataField="place_name" HeaderText="Place" />
                         <asp:BoundField DataField="district_name" HeaderText="District" />
                        
                        <asp:TemplateField HeaderText="Photo">
                            <ItemTemplate>
                                <img src="../Assets/InstitutionDocs/<%# Eval("institution_photo") %>" width="50" height="50" />
                            </ItemTemplate>
                        </asp:TemplateField>
                              <asp:TemplateField HeaderText="Proof">
                            <ItemTemplate>
                                <img src="../Assets/InstitutionDocs/<%# Eval("institution_licensephoto") %>" width="50" height="50" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton" runat="server" CommandArgument='<%# Eval("institution_id") %>' CommandName="acc">Accept</asp:LinkButton>
                                &nbsp;<br />
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("institution_id") %>' CommandName="re">Reject</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

