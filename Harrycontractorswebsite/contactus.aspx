<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="contactus.aspx.cs" Inherits="Harrycontractorswebsite.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
     <table class="contactcolumn2">
         <tr><td><image src="images/location.png"></td></tr>
     </table>
          <table class="contactcolumn1">
        <tr><td colspan="3" style="text-align:center"><asp:ValidationSummary ID="ValidationSummary1" DisplayMode="List" Font-Size="Medium" BackColor="Red" ForeColor="Black" BorderWidth="2px" runat="server"/></td></tr>
        <tr><td style="text-align: right; font-family: 'times New Roman', Times, serif; font-size: large; font-weight: bold; color: #000000;">Firstname</td><td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td><td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredField" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td></tr>
        <tr><td style="text-align: right; font-family: 'times New Roman', Times, serif; font-size: large; font-weight: bold; color: #000000;">Lastname</td><td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td><td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredField" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td></tr>
        <tr><td style="text-align: right; font-family: 'times New Roman', Times, serif; font-size: large; font-weight: bold; color: #000000;">Email</td><td>
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Email" style="margin-left: 0px"></asp:TextBox>
            </td><td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="RequiredField" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td></tr>
        <tr><td style="text-align: right; font-family: 'times New Roman', Times, serif; font-size: large; font-weight: bold; color: #000000; height: 34px;">Phone</td><td style="width: 241px; height: 34px">
            <asp:TextBox ID="TextBox4" runat="server" ></asp:TextBox>
            </td><td style="height: 34px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="RequiredField" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td></tr>
        <tr><td style="text-align: right; font-family: 'times New Roman', Times, serif; font-size: large; font-weight: bold; color: #000000;">Comments</td><td style="width: 241px">
            <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" ></asp:TextBox>
            </td><td></td></tr>
        <tr><td></td><td>
            <asp:Button ID="Button1" runat="server" Text="Submit" />
            </td><td>&nbsp;</td></tr>
    </table>
           

    
</asp:Content>
