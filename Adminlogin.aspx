<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Adminlogin.aspx.cs" Inherits="Adminlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
    <table class="auto-style1" style="margin-top:0px;">
        <tr>
            <td colspan="3" style="background-color:#0000FF; font-size: x-large; text-decoration: underline;">
                

                <asp:Label ID="lbusername" runat="server" BackColor="White" ForeColor="Black" Text="Admin Login"></asp:Label>

            </td>
        </tr>

        <tr>
            <td style="width: 308px">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/co.png" />
            </td>
            <td style="width: 332px">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 308px; height: 35px; font-size: x-large;">
                <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
            </td>
            <td style="width: 332px; height: 35px;">
                <asp:TextBox ID="txtuname" runat="server"></asp:TextBox>
            </td>
            <td style="height: 35px; font-size: medium;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuname" ErrorMessage="Enter Username"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 308px; font-size: x-large;">
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            </td>
            <td style="width: 332px">
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td style="font-size: medium">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 308px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td style="width: 332px; font-size: x-large;" colspan="3">
                <asp:Button ID="btnlogin" runat="server" OnClick="btnlogin_Click" Text="Login" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 308px">&nbsp;</td>
            <td style="width: 332px">
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 308px">&nbsp;</td>
            <td style="width: 332px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    
        
</asp:Content>




