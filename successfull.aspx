<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.master" AutoEventWireup="true" CodeFile="successfull.aspx.cs" Inherits="successfull" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    Congratulations!!!!
    </p>
    <p>
        Your order is successfull and will be delivered to you by <asp:Label ID="lbldate" runat="server"></asp:Label>....</p>
    Your Order ID is <asp:Label ID="lblbid" runat="server"></asp:Label> 
    <br />
    <br />
    Total Amount is <asp:Label ID="lblamt" runat="server"></asp:Label> Rs
    <br />
    <br />
    Thanks for Shopping on our website</asp:Content>

