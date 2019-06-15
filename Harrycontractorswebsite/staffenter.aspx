<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="staffenter.aspx.cs" Inherits="Harrycontractorswebsite.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br />
<table align="center" style="width: 100%">
    <tr>
        <td style="width: 516px; text-align: center">
            <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click" Text="EDIT CUSTOMER" />
        </td>
        <td style="text-align: center">
            <asp:Button ID="Button2" runat="server" Font-Bold="True" OnClick="Button2_Click" Text="EDIT SERVICES" />
        </td>
    </tr>
</table>
<br />
</asp:Content>
