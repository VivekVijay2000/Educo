<%@ Page Title="" Language="C#" MasterPageFile="~/User/GuestMaster.master" AutoEventWireup="true" CodeFile="RateNow.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">Rate</td>
            <td class="auto-style4">
                <asp:DropDownList ID="ddistrict" runat="server" Width="245px">
                    <asp:ListItem>Excellent</asp:ListItem>
                    <asp:ListItem>Very Good</asp:ListItem>
                    <asp:ListItem>Good</asp:ListItem>
                    <asp:ListItem>Average</asp:ListItem>
                    <asp:ListItem>Poor</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Comment</td>
            <td class="auto-style1">
                <asp:TextBox ID="txtPlace" runat="server" Width="240px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">
                <asp:Button ID="btndistrict" runat="server" OnClick="btndistrict_Click" Text="Submit" Width="90px" />
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" Width="90px" OnClick="btnCancel_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:GridView ID="grddis" runat="server" AutoGenerateColumns="False" OnRowCommand="grddis_RowCommand" AllowPaging="True" OnPageIndexChanging="grddis_PageIndexChanging" PageIndex="4" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                    <Columns>
                        <asp:BoundField DataField="rate_value" HeaderText="RateValue" />
                        <asp:BoundField DataField="rate_comment" HeaderText="Comment" />
                        <asp:BoundField DataField="user_name" HeaderText="UserName" />
                        <%--<asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="btndelete" runat="server" CommandArgument='<%# Eval("place_id") %>' CommandName="del" CausesValidation="False">Delete</asp:LinkButton>
                                <asp:LinkButton ID="btnedit" runat="server" CommandArgument='<%# Eval("place_id") %>' CommandName="ed" CausesValidation="False">Edit</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>--%>
                    </Columns>
                  
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                  
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

