<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="customerlogin.aspx.cs" Inherits="Harrycontractorswebsite.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <br />
        <br />
</div>
    <table align="center" style="width: 100%; border-left-style: solid; border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-style: solid; border-top-width: 1px; border-bottom: 1px solid #C0C0C0; background-color: #8DBC8F">
        <tr>
            <td colspan="3" style="text-align: center; font-family: 'times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #000000;">Login<br />
                <asp:Label ID="txtlbl" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>  <td colspan="3" style="text-align: center">
            <asp:ValidationSummary ID="ValidationSummary1" DisplayMode="List" Font-Size="Small" BackColor="Red" ForeColor="Black" BorderWidth="2px" runat="server" />
        </td></tr>
        <tr>
            <td style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #000000; text-align: right; width: 482px;">Customer EmailID</td>
            <td style="width: 255px; text-align: center">
                <asp:TextBox ID="txtemailid" runat="server" TextMode="Email" Width="262px"></asp:TextBox>
            </td>
            <td style="text-align: left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemailid" Display="Dynamic" ErrorMessage="Field required" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemailid" Display="Dynamic" ErrorMessage="Invalid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #000000; text-align: right; height: 31px; width: 482px;">Password</td>
            <td style="width: 255px; text-align: center; height: 31px">
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="262px"></asp:TextBox>
            </td>
            <td style="text-align: left; height: 31px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword" Display="Dynamic" ErrorMessage="Field required" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td></td>
            <td style="width: 255px; text-align: center; height: 31px">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Submit" OnClick="Button1_Click" />
            </td>
            <td style="text-align: left; height: 31px">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 255px; text-align: center; height: 31px">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Medium" NavigateUrl="~/forgot.aspx" Width="214px">Forgot Password?</asp:HyperLink>
            </td>
            <td style="text-align: left; height: 31px">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
