<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Product_Edit1.aspx.cs" Inherits="Product_Edit1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="2">
                <asp:Panel ID="Panel1" runat="server">
                    <asp:GridView ID="gvproduct" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="831px" OnRowCommand="gvproduct_RowCommand">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="product_id" HeaderText="PID" />
                            <asp:BoundField DataField="product_name" HeaderText="Name" />
                            <asp:BoundField DataField="Price" HeaderText="Price" />
                            <asp:BoundField DataField="description" HeaderText="Description" />
                            <asp:ImageField DataImageUrlField="image_url" HeaderText="Image">
                                <ControlStyle Height="150px" Width="150px" />
                            </asp:ImageField>
                            <asp:ButtonField CommandName="select" Text="Select" />
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="PID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpid" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Price"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Description"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtdescription" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Image"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:Image ID="Image1" runat="server" Height="150px" Width="150px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnupload" runat="server" Text="Upload" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btndelete" runat="server" Text="Delete" />
            </td>
            <td>
                <asp:Button ID="btnupdate" runat="server" OnClick="btnupdate_Click" Text="Update" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

