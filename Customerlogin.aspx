<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Customerlogin.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     &nbsp;&nbsp;&nbsp;
     <table class="auto-style1">
        <tr>
            <td colspan="3" style="background-color: #0066FF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="text-decoration: underline"><strong><span style="color: #FFFFFF">&nbsp;</span><span style="font-size: x-large"><span style="color: #FFFFFF">Customer Login</span>&nbsp;&nbsp; </span></strong></span></td>
        </tr>
        <tr>
            <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image1" runat="server" Height="60px" ImageUrl="~/Images/login1.png" Width="134px" />
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 216px; height: 48px;">
                <asp:Label ID="Label1" runat="server" Text="Username/E-mail"></asp:Label>
            </td>
            <td style="width: 226px; height: 48px;">
                <asp:TextBox ID="txtuname" runat="server" Height="25px" Width="193px"></asp:TextBox>
            </td>
            <td style="height: 48px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuname" ErrorMessage="enter username"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtuname" ErrorMessage="invalid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 216px; height: 41px;">
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            </td>
            <td style="width: 226px; height: 41px;">
                <asp:TextBox ID="txtpassword" runat="server" Height="22px" Width="190px" TextMode="Password"></asp:TextBox>
            </td>
            <td style="height: 41px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword" ErrorMessage="enter password"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnlogin" runat="server" Text="login" OnClick="btnlogin_Click" style="height: 26px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Button ID="btncancel" runat="server" Text="Cancel" OnClick="btncancel_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 216px; height: 31px;">
                <asp:Label ID="lblmessage" runat="server"></asp:Label>
            </td>
            <td style="width: 226px; height: 31px;"></td>
            <td style="height: 31px"></td>
        </tr>
    </table>
</asp:Content>

