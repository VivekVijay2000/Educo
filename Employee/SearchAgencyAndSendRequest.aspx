<%@ Page Title="" Language="C#" MasterPageFile="~/Employee/EmployeeMaster.master" AutoEventWireup="true" CodeFile="SearchAgencyAndSendRequest.aspx.cs" Inherits="Employee_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 227px;
        }
        .auto-style3 {
            width: 130px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>Select District<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" OnItemCommand="DataList1_ItemCommand" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Both" >
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <ItemStyle ForeColor="#000066" />
                    <ItemTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style3">Institution Name</td>
                                <td>
                                    <asp:Label ID="lblName" runat="server" Text='<%# Eval("institution_name") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">Email</td>
                                <td>
                                    <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("institution_email") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">Contact</td>
                                <td>
                                    <asp:Label ID="lblContact" runat="server" Text='<%# Eval("institution_contact") %>'></asp:Label>
                                </td>
                            </tr>
                             <tr>
                                <td class="auto-style3">Place</td>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("place_name") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">Address</td>
                                <td>
                                    <asp:Label ID="lblAddress" runat="server" Text='<%# Eval("institution_address") %>'></asp:Label>
                                </td>
                            </tr>
                            <%--<tr>
                                <td class="auto-style3">Agency Logo</td>
                                <td><img src="../Assets/InstitutionDocs/<%#Eval("institution_photo") %>" width="50" height="50" /></td>
                            </tr>--%>
                            <tr>
                                <td class="auto-style3">&nbsp;</td>
                                <td>
                                    <asp:LinkButton ID="linkRequest" runat="server" CommandArgument='<%# Eval("institution_id") %>' CommandName="request">Send Request</asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel1" runat="server">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style2">Job Name</td>
                            <td>
                                <asp:DropDownList ID="DropDownList2" runat="server" Width="225px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Resume</td>
                            <td>
                                <asp:FileUpload ID="flupFile" runat="server" Width="250px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Experience</td>
                            <td>
                                <asp:TextBox ID="txtExp" runat="server" Width="250px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td>
                                <asp:Button ID="btnSave" runat="server" Text="Save" Width="90px" OnClick="btnSave_Click" />
                                <asp:Button ID="btnCancel" runat="server" Text="Cancel" Width="90px" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

