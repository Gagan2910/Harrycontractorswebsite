<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="stafflogin.aspx.cs" Inherits="Harrycontractorswebsite.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div></div>

        <table align="center" style="width: 100%; border-left-style: solid; border-left-width: 1px; background-color:#8DBC8F; border-right: 1px solid #C0C0C0; border-top-style: solid; border-top-width: 1px; border-bottom: 1px solid #C0C0C0 ">
            <tr>
                <td colspan="3" style="text-align: center; font-family: 'times New Roman', Times, serif; color: #000000; font-weight: bold;">Staff Login<br />
                    <asp:Label ID="txtlabel" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr><td colspan="3" style="text-align: center">
           <asp:ValidationSummary ID="ValidationSummary1" DisplayMode="List" Font-Size="Small" BackColor="Red" ForeColor="Black" BorderWidth="2px" runat="server" />
           </td></tr>
            <tr>
                <td style="font-family: 'times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #000000; text-align: right; width: 474px;">Staff UserID</td>
                <td style="width: 269px">
                    <asp:TextBox ID="txtuserid" runat="server" Width="258px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuserid" ErrorMessage="Field required" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="font-family: 'times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #000000; text-align: right; width: 474px; height: 33px;">Password</td>
                <td style="width: 269px; height: 33px">
                    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="258px"></asp:TextBox>
                </td>
                <td style="height: 33px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword" ErrorMessage="Field required" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="font-family: 'times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #000000; text-align: right; width: 474px;">&nbsp;</td>
                <td style="text-align: center; width: 269px">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Submit" OnClick="Button1_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>

   

</asp:Content>
