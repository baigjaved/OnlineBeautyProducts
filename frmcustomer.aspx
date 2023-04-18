<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="frmcustomer.aspx.cs" Inherits="frmcustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
    <tr>
        <td style="width: 186px">
            <asp:Label ID="lblusername" runat="server" Text="Username / Email ID"></asp:Label>
        </td>
        <td style="width: 277px">
            <asp:TextBox ID="txtusername" runat="server" AutoPostBack="True" OnTextChanged="txtusername_TextChanged"></asp:TextBox>
        </td>
        <td style="width: 166px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername" ErrorMessage="Enter username"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="txtusername" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 186px">
            <asp:Label ID="lblname" runat="server" Text="Name"></asp:Label>
        </td>
        <td style="width: 277px">
            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
        </td>
        <td style="width: 166px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtname" ErrorMessage="Enter Name"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 186px">
            <asp:Label ID="lbladdress" runat="server" Text="Address"></asp:Label>
        </td>
        <td style="width: 277px">
            <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td style="width: 166px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtaddress" ErrorMessage="Enter Address"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 186px; height: 43px;">
            <asp:Label ID="lblmobileno" runat="server" Text="Contact No"></asp:Label>
        </td>
        <td style="width: 277px; height: 43px;">
            <asp:TextBox ID="txtmobileno" runat="server"></asp:TextBox>
        </td>
        <td style="width: 166px; height: 43px">
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtmobileno" ErrorMessage="Enter Contact No" MaximumValue="9999999999" MinimumValue="6000000000"></asp:RangeValidator>
        </td>
        <td style="height: 43px"></td>
    </tr>
    <tr>
        <td style="width: 186px">
            <asp:Label ID="lblcity" runat="server" Text="City"></asp:Label>
        </td>
        <td style="width: 277px">
            <asp:TextBox ID="txtcity" runat="server" ViewStateMode="Disabled"></asp:TextBox>
        </td>
        <td style="width: 166px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtcity" ErrorMessage="Enter City"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 186px; height: 43px;">
            <asp:Label ID="lblpassword" runat="server" Text="Password"></asp:Label>
        </td>
        <td style="width: 277px; height: 43px;">
            <asp:TextBox ID="txtpassword" runat="server" EnableViewState="False" TextMode="Password"></asp:TextBox>
        </td>
        <td style="width: 166px; height: 43px"></td>
        <td style="height: 43px"></td>
    </tr>
    <tr>
        <td style="width: 186px; height: 53px;">
            <asp:Label ID="lblpassword0" runat="server" Text="Confirm Password"></asp:Label>
        </td>
        <td style="width: 277px; height: 53px;">
            <asp:TextBox ID="txtpassword0" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td style="width: 166px; height: 53px">
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtpassword0" ErrorMessage="Password  Not Matching"></asp:CompareValidator>
        </td>
        <td style="height: 53px"></td>
    </tr>
    <tr>
        <td style="width: 186px; height: 35px;"></td>
        <td style="width: 277px; height: 35px;"></td>
        <td style="width: 166px; height: 35px;"></td>
        <td style="height: 35px"></td>
    </tr>
    <tr>
        <td style="width: 186px">&nbsp;</td>
        <td style="width: 277px">
            <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="Submit" />
        </td>
        <td style="width: 166px">
            <asp:Button ID="btncancel" runat="server" OnClick="btncancel_Click" Text="Cancel" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 186px">&nbsp;</td>
        <td style="width: 277px">
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
        </td>
        <td style="width: 166px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 186px">&nbsp;</td>
        <td style="width: 277px">&nbsp;</td>
        <td style="width: 166px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 186px">&nbsp;</td>
        <td style="width: 277px">&nbsp;</td>
        <td style="width: 166px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 186px">&nbsp;</td>
        <td style="width: 277px">&nbsp;</td>
        <td style="width: 166px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

