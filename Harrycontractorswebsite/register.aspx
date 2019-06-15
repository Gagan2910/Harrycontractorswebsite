<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Harrycontractorswebsite.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div style="text-align: center"> 
        <br />
        <br />
</div>
    
    <table align="center" style="width: 100%; background-color: #8DBC8F">
        
       <tr><td colspan="3" style="text-align: center"><h2>New Customers please register here</h2>
           <p>
               <asp:Label ID="txtlbl" runat="server" BackColor="Red" ForeColor="Black" Text="Label" Visible="False"></asp:Label>
           </p>
           <p>
               <asp:Label ID="txtlbl2" runat="server" BackColor="Red" ForeColor="Black" Text="Password must be 8 characters long,Unique,contain digits,uppercase letter,lowercase letter" Visible="False"></asp:Label>
           </p>
          
           </td></tr>
        
       <tr><td colspan="3" style="text-align: center">
           <asp:ValidationSummary ID="ValidationSummary1" DisplayMode="List" Font-Size="Small" BackColor="Red" ForeColor="Black" BorderWidth="2px" runat="server" />
           </td></tr>
        <tr>
           
            <td style="text-align: right; width: 395px; font-family: 'Times New Roman', Times, serif; font-size: medium; color: #000000; font-weight: bold;">First Name</td>
            <td style="text-align: left; width: 131px;">
                <asp:TextBox ID="txtfirstname" runat="server" Height="38px" Width="400px"></asp:TextBox>
            </td>
            <td style="text-align: left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfirstname" ErrorMessage="Enter required field" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 395px; font-family: 'Times New Roman', Times, serif; font-size: medium; color: #000000; font-weight: bold;">Last Name</td>
            <td style="width: 131px">
                <asp:TextBox ID="txtlastname" runat="server" Height="38px" Width="400px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtlastname" ErrorMessage="Enter required field" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 395px; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #000000;">Email address</td>
            <td style="width: 131px">
                <asp:TextBox ID="txtemailaddress" runat="server" TextMode="Email" Height="38px" Width="400px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemailaddress" ErrorMessage="Enter required field" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemailaddress" ErrorMessage="Invalid Email" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ViewStateMode="Enabled" Display="Dynamic">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 395px; font-family: 'times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #000000;">New Password</td>
            <td style="width: 131px">
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" MaxLength="8" Height="38px" Width="400px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtpassword" ErrorMessage="Enter required field" ForeColor="Red">*</asp:RequiredFieldValidator>
&nbsp;
                </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 395px; font-family: 'times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #000000;">Confirm Password</td>
            <td style="width: 131px">
                <asp:TextBox ID="txtconfirmpassword" runat="server" TextMode="Password" Width="400px" Height="38px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtconfirmpassword" ErrorMessage="Enter required field" ForeColor="Red">*</asp:RequiredFieldValidator>
&nbsp;
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtconfirmpassword" ErrorMessage="Password does not match" ForeColor="Red" Display="Dynamic">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 395px; font-family: 'Times New Roman', Times, serif; font-size: medium; color: #000000; font-weight: bold;">Phone</td>
            <td style="width: 131px">
                <asp:TextBox ID="txtphone" runat="server" TextMode="Phone" Width="400px" Height="38px">+64</asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtphone" ErrorMessage="Enter required field" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 395px; font-family: 'times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #000000;">Mobile</td>
            <td style="width: 131px">
                <asp:TextBox ID="txtmobile" runat="server" TextMode="Phone" Width="400px" Height="38px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtmobile" ErrorMessage="Enter required field" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 395px; font-family: 'times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #000000;">StreetNo.</td>
            <td style="width: 131px">
                <asp:TextBox ID="txtstreetno" runat="server" Width="400px" Height="38px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtstreetno" ErrorMessage="Enter required field" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 395px; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #000000;">Suburb/City</td>
            <td style="width: 131px">
                <asp:DropDownList ID="txtsuburb" runat="server" Width="401px" Height="38px" DataSourceID="SqlDataSource1" DataTextField="suburb" DataValueField="suburb">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HarrycontractorsConnectionString %>" SelectCommand="SELECT * FROM [tblsuburb]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtsuburb" ErrorMessage="Enter required field" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 395px; font-family: 'times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #000000;">Country</td>
            <td style="width: 131px">
                <asp:DropDownList ID="txtcountry" runat="server" Width="401px" Height="38px" DataSourceID="SqlDataSource2" DataTextField="country" DataValueField="country">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HarrycontractorsConnectionString %>" SelectCommand="SELECT * FROM [tblcountry]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtcountry" ErrorMessage="Enter required field" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 395px; font-family: 'times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #000000;">Comments</td>
            <td style="width: 131px">
                <asp:TextBox ID="txtcomments" runat="server" TextMode="MultiLine" Width="400px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right; width: 395px;">&nbsp;</td>
            <td style="width: 131px; text-align: center;">
                <asp:Button ID="Button1" runat="server" Text="Submit" Height="43px" Width="108px" OnClick="Button1_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    
</asp:Content>
