<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="frmrptproduct.aspx.cs" Inherits="frmrptproduct" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <style type="text/css">
        .csswidth
        {
      }
    </style>
      <table style="width: 100%">
         
        <tr>
            <td>
                <asp:Panel ID="Panel1" runat="server">
                </asp:Panel>
                <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="851px">
                </rsweb:ReportViewer>
                <br />
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
    </table>
</asp:Content>

