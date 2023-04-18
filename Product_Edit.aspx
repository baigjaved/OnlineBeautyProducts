<%@ Page MaintainScrollPositionOnPostback="true" Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Product_Edit.aspx.cs" Inherits="Product_Edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td>
                <asp:GridView ID="Gvproduct" runat="server" Height="150px" OnSelectedIndexChanged="Gvproduct_SelectedIndexChanged" Width="845px" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="Gvproduct_RowCommand">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="product_ID" HeaderText="product_ID" />
                        <asp:BoundField DataField="category" HeaderText="category" />
                        <asp:BoundField DataField="product_name" HeaderText="product_name" />
                        <asp:BoundField DataField="price" HeaderText="price" />
                        <asp:BoundField DataField="quantity" HeaderText="quantity" />
                        <asp:BoundField DataField="shade" HeaderText="shade" />
                        <asp:BoundField DataField="description" HeaderText="description" />
                        <asp:ImageField DataImageUrlField="image_url" HeaderText="imageurl">
                            <ControlStyle Height="200px" Width="200px" />
                        </asp:ImageField>
                        <asp:ButtonField CommandName="select" Text="select" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel1" runat="server">
                    <table style="width: 100%">
                        <tr>
                            <td style="width: 252px; height: 35px">
                                <asp:Label ID="Label1" runat="server" Text="product ID"></asp:Label>
                            </td>
                            <td style="height: 35px">
                                <asp:TextBox ID="txtproid" runat="server" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td style="height: 35px"></td>
                        </tr>
                        <tr>
                            <td style="width: 252px; height: 35px">
                                <asp:Label ID="Label2" runat="server" Text="product name"></asp:Label>
                            </td>
                            <td style="height: 35px">
                                <asp:TextBox ID="txtproductname" runat="server"></asp:TextBox>
                            </td>
                            <td style="height: 35px"></td>
                        </tr>
                        <tr>
                            <td style="width: 252px">
                                <asp:Label ID="Label3" runat="server" Text="price"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 252px; height: 43px">
                                <asp:Label ID="Label4" runat="server" Text="Quantity"></asp:Label>
                            </td>
                            <td style="height: 43px">
                                <asp:TextBox ID="txtquantity" runat="server"></asp:TextBox>
                            </td>
                            <td style="height: 43px"></td>
                        </tr>
                        <tr>
                            <td style="width: 252px; height: 35px">
                                <asp:Label ID="Lable15" runat="server" Text="Image URL"></asp:Label>
                            </td>
                            <td style="height: 35px">
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </td>
                            <td style="height: 35px"></td>
                        </tr>
                        <tr>
                            <td style="width: 252px">
                                <br />
                            </td>
                            <td>
                                <asp:Button ID="btnupload" runat="server" Text="Upload" OnClick="btnupload_Click" />
                                &nbsp;&nbsp;&nbsp;
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="200px" Width="200px" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 252px">
                                <asp:Button ID="btndelete" runat="server" Text="Delete" OnClick="btndelete_Click" />
                            </td>
                            <td>
                                <asp:Button ID="btnupdate" runat="server" Text="Update" OnClick="btnupdate_Click" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 252px">&nbsp;</td>
                            <td>
                                <asp:Label ID="lblmsg" runat="server" Text="lblmsg"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

