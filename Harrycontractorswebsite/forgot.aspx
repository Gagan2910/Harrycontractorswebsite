<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="forgot.aspx.cs" Inherits="Harrycontractorswebsite.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table align="center" style="width: 100%; border-left-style: solid; border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-style: solid; border-top-width: 1px; border-bottom: 1px solid #C0C0C0; background-color: #8DBC8F">
      
        <tr>  <td colspan="3" style="text-align: center">
            
            <asp:ValidationSummary ID="ValidationSummary1" DisplayMode="List" Font-Size="Small" BackColor="Red" ForeColor="Black" BorderWidth="2px" runat="server"  />
            
        </td></tr>
       <tr>  <td colspan="3" style="text-align: center">

            <asp:Label ID="txtlbl2" runat="server" Font-Bold="True" ForeColor="Red" Visible="False">Password must be 8 characters long,Unique,contain digits,uppercase letter,lowercase letter</asp:Label>

            <br />
            <asp:Label ID="lbllabel2" runat="server" Font-Bold="True" ForeColor="Red" Text="Your password has been changed successfully" Visible="False"></asp:Label>
            <br />
            <asp:HyperLink ID="customerloginlink" runat="server" Font-Size="Medium" ForeColor="#66FFFF" NavigateUrl="~/customerlogin.aspx" Visible="False" Width="315px">Click Here to Login again</asp:HyperLink>

            </td></tr>
        <tr>
            <td colspan="3" style="text-align: center">
                <br />
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Reset New Password"></asp:Label>
            </td>
        </tr>
       <tr><td style="text-align: right">
           <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="EmailId"></asp:Label>
           </td><td>
               <asp:TextBox ID="TextBox3" runat="server" TextMode="Email" Width="252px"></asp:TextBox>
           </td><td>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please enter required field" ForeColor="Red">*</asp:RequiredFieldValidator>
           </td></tr>
      
        <tr><td style="text-align: right; width: 560px">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="New Password"></asp:Label>
            </td><td style="width: 258px">
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="249px"></asp:TextBox></td>
               <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter required field" ControlToValidate="txtpassword" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td></tr>
        <tr><td style="text-align: right; width: 560px">
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Confirm New Password"></asp:Label>
            </td><td style="width: 258px">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="249px"></asp:TextBox></td>
               <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter required field" ControlToValidate="TextBox2" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password and confirm doesn't match" ControlToCompare="txtpassword" ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red">*</asp:CompareValidator>
&nbsp;</td></tr>
        <tr>
            <td colspan="3" style="text-align: center">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Submit" OnClick="Button1_Click" />
            </td>
        </tr>
        
    </table>
</asp:Content>
