<%@ Page MaintainScrollPositionOnPostback="true" Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="addproduct.aspx.cs" Inherits="addproductA" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td style="font-size: x-large;" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" style="font-weight: 700; text-decoration: underline" Text="Product"></asp:Label>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 195px">Category</td>
            <td style="width: 357px">
                <asp:DropDownList ID="ddlcategory" runat="server" AutoPostBack="True" Height="16px" OnSelectedIndexChanged="ddlcategory_SelectedIndexChanged" Width="175px">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>Facecare</asp:ListItem>
                    <asp:ListItem>Lipcare</asp:ListItem>
                    <asp:ListItem>Eyecare</asp:ListItem>
                    <asp:ListItem>Haircare</asp:ListItem>
                    <asp:ListItem>Bodycare</asp:ListItem>
                    <asp:ListItem>Fragrances</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 195px">Product Name</td>
            <td style="width: 357px">
                <asp:DropDownList ID="ddlproduct" runat="server" Height="17px" OnSelectedIndexChanged="ddlproduct_SelectedIndexChanged" Width="175px">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 195px">Shade</td>
            <td style="width: 357px">
                <asp:DropDownList ID="ddlshade" runat="server" Height="16px" OnSelectedIndexChanged="ddlshade_SelectedIndexChanged" Width="175px">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>None</asp:ListItem>
                    <asp:ListItem>Red</asp:ListItem>
                    <asp:ListItem>Pink</asp:ListItem>
                    <asp:ListItem>Orange</asp:ListItem>
                    <asp:ListItem>Brown</asp:ListItem>
                    <asp:ListItem>Black</asp:ListItem>
                    <asp:ListItem>Blue</asp:ListItem>
                    <asp:ListItem>Golden</asp:ListItem>
                    <asp:ListItem>Light</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 195px; height: 26px;">Price</td>
            <td style="width: 357px; height: 26px;">
                <asp:TextBox ID="txtprice" runat="server" Width="169px"></asp:TextBox>
            </td>
            <td style="height: 26px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Price" ControlToValidate="txtprice"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 195px; height: 34px;">Quantity</td>
            <td style="width: 357px; height: 34px;">
                <asp:TextBox ID="txtquantity" runat="server" Width="167px"></asp:TextBox>
            </td>
            <td style="height: 34px">
            </td>
        </tr>
        <tr>
            <td style="width: 195px">Description</td>
            <td style="width: 357px">
                <asp:TextBox ID="txtdescription" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Description" ControlToValidate="txtdescription"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 195px">Image</td>
            <td style="width: 357px">
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:Button ID="Button3" runat="server" Text="Upload" OnClick="Button3_Click" />
            </td>
            <td rowspan="3">
                <asp:Image ID="Image1" runat="server" Height="171px" Width="181px" />
            </td>
        </tr>
        <tr>
            <td style="width: 195px">&nbsp;</td>
            <td style="width: 357px">
                <asp:Button ID="btn_cancel" runat="server" OnClick="Button1_Click" Text="Cancel" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_ok" runat="server" OnClick="btn_ok_Click" Text="OK" />
            </td>
        </tr>
        <tr>
            <td style="width: 195px; height: 23px;"></td>
            <td style="width: 357px; height: 23px;">
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
        </tr>
    </table>

</asp:Content>

