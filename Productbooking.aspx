<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.master" AutoEventWireup="true" CodeFile="Productbooking.aspx.cs" Inherits="Productbooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 585px; height: 46px;">
                <asp:Label ID="Label1" runat="server" Text="Select Category"></asp:Label>
                <asp:DropDownList ID="ddl_cat" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_cat_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="height: 35px; width: 585px;">
                <asp:DataList ID="dlproduct" runat="server" OnItemCommand="dlproduct_ItemCommand" RepeatColumns="2" Width="814px">
                    <ItemTemplate>
                        <table style="width: 100%">
                            <tr>
                                <td style="width: 172px">
                                    <asp:Label ID="Label2" runat="server" Text="ProductID"></asp:Label>
                                    &nbsp;
                                    <asp:Label ID="lblpid" runat="server" Text='<%# Eval("product_ID") %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:Image ID="Image1" runat="server" Height="100px" Width="150px" ImageUrl='<%# Eval("image_url") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 172px">
                                    <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>
                                    &nbsp;&nbsp;
                                    <asp:Label ID="lblname" runat="server" Text='<%# Eval("product_name") %>'></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 172px">
                                    <asp:Label ID="Label4" runat="server" Text="Quantity"></asp:Label>
                                    &nbsp;
                                    <asp:TextBox ID="txtqty" runat="server" Height="27px" TextMode="Number" Width="106px">1</asp:TextBox>
                                </td>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Text="Price"></asp:Label>
                                    &nbsp;
                                    <asp:Label ID="lblamt" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="select">Add to Cart</asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        </table>
</asp:Content>

