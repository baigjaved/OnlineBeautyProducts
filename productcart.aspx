<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.master" AutoEventWireup="true" CodeFile="productcart.aspx.cs" Inherits="productcart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        .csswidth
        { 
            width:50px;
        }
    </style>
    <table style="width: 100%">
    <tr>
        <td colspan="2">
            <asp:GridView  ID="gvcart" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="801px" OnSelectedIndexChanged="gvcart_SelectedIndexChanged" OnRowDeleting="gvcart_RowDeleting" OnRowEditing="gvcart_RowEditing" OnRowUpdated="gvcart_RowUpdated" OnRowUpdating="gvcart_RowUpdating">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Product ID" ControlStyle-CssClass="csswidth">
                        <EditItemTemplate>
                            <asp:TextBox   ID="TextBox1" ReadOnly="true" runat="server" Text='<%# Bind("pid") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label   ID="Label1" runat="server" Text='<%# Bind("pid") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name" ControlStyle-CssClass="csswidth">
                        <EditItemTemplate>
                            <asp:TextBox   ID="TextBox2" ReadOnly="true" runat="server" Text='<%# Bind("pname") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label  ID="Label2" runat="server" Text='<%# Bind("pname") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Quantity" ControlStyle-CssClass="csswidth">
                        <EditItemTemplate>
                            <asp:TextBox   ID="TextBox3" TextMode="Number" runat="server" Text='<%# Bind("qty") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("qty") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Price" ControlStyle-CssClass="csswidth">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" ReadOnly="true" runat="server" Text='<%# Bind("price_unit") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("price_unit") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Total Price" ControlStyle-CssClass="csswidth">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" ReadOnly="true" runat="server" Text='<%# Bind("total_price") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("total_price") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Date Of Add" ControlStyle-CssClass="csswidth">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" ReadOnly="true" runat="server" Text='<%# Bind("dateofadd") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("dateofadd") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Image" ControlStyle-CssClass="csswidth">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox7" ReadOnly="true" runat="server" Text='<%# Eval("imageurl") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("imageurl") %>' />
                        </ItemTemplate>
                        <ControlStyle Height="150px" Width="150px" />
                        <ItemStyle Height="150px" Width="150px" />
                    </asp:TemplateField>
                    <asp:CommandField ShowCancelButton="False" ShowEditButton="True" />
                    <asp:CommandField ShowDeleteButton="True" />
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
        <td style="width: 349px">
            <asp:Label ID="Label1" runat="server" Text="Total Amount"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblamt" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 349px">
            <asp:Button ID="btncheckout" runat="server" Text="Proceed To Checkout" OnClick="Button1_Click" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 349px">
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 349px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

