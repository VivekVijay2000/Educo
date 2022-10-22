<%@ Page Title="" Language="C#" MasterPageFile="~/Institution/InstitutionMasterPage.master" AutoEventWireup="true" CodeFile="MyProfile.aspx.cs" Inherits="Institution_Default" %>

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
            <td class="auto-style2">
                <asp:DetailsView ID="Dtl_myprofile" runat="server" AutoGenerateRows="False" Height="50px" Width="125px" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                    <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <Fields>
                        <asp:BoundField DataField="institution_name" HeaderText="Name" />
                        <asp:BoundField DataField="institution_contact" HeaderText="Contact" />
                        <asp:BoundField DataField="institution_email" HeaderText="Email" />
                        <asp:BoundField DataField="institution_address" HeaderText="Address" />
                        <asp:BoundField DataField="institution_bio" HeaderText="Bio" />
                        <asp:BoundField DataField="institution_licenseno" HeaderText="License Number" />
                        <asp:BoundField DataField="institution_pincode" HeaderText="Pincode" />
                        <asp:TemplateField HeaderText="Photo">
                            <ItemTemplate>
                                <img src="../Assets/InstitutionDocs/<%#Eval("institution_photo")%>" width="50" height="50" />
                                <br />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Licence Photo">
                            <ItemTemplate>
                                <img src="../Assets/InstitutionDocs/<%#Eval("institution_licensephoto")%>" width="50" height="50" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="institutiontype_name" HeaderText="Institution Type" />
                        <asp:BoundField DataField="district_name" HeaderText="District " />
                        <asp:BoundField DataField="place_name" HeaderText="Place" />
                    </Fields>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                </asp:DetailsView>
            </td>
            <td class="auto-style2"></td>
        </tr>
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
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

