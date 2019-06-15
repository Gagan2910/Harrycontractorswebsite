<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="services.aspx.cs" Inherits="Harrycontractorswebsite.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" style="width: 100%">
    <tr>
        <td>&nbsp;</td>
        <td style="text-align: center">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#336600" Text="Welcome" Visible="False"></asp:Label>
&nbsp;
            <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Black" Visible="False"></asp:Label>
        </td>
        <td style="text-align: right">
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logout" Font-Bold="True" />
                        </td>
    </tr>
</table>
<h1>&nbsp; We offer following Services to our customers
    </h1>
    <p align="center">
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" GroupItemCount="3" DataKeyNames="ServiceImage" style="margin-left: 0px" OnSelectedIndexChanged="ListView1_SelectedIndexChanged1">
            <AlternatingItemTemplate>
                <td runat="server" style="background-color: #FAFAD2;color: #284775;" >
                    <table style="text-align: center">
                        <tr><td style="width:300px"><h2><asp:Label ID="ServicenameLabel" runat="server" Text='<%# Eval("Servicename") %>' /></h2></td></tr>
                          <tr><td><a href='addtocart.aspx?ServiceImage=<%# Eval("ServiceImage") %>'><asp:Image ID="ServiceImageLabel1" runat="server" Imageurl='<%# Eval("ServiceImage") %>'  width="300px" height="200px"/></a></td></tr>
                        <tr><td><h2><asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' /></h2></td></tr>
                         <tr><td><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/addcart.png" /></td></tr>
                   </table>
                </td>
            </AlternatingItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <ItemTemplate>
                <td runat="server" style="background-color: #FFFBD6;color: #333333;" >
                    <table style="text-align: center">
                       <tr><td style="width:300px"><h2><asp:Label ID="ServicenameLabel" runat="server" Text='<%# Eval("Servicename") %>' /></h2></td></tr>
                       <tr><td><a href='addtocart.aspx?ServiceImage=<%# Eval("ServiceImage") %>'><asp:Image ID="ServiceImageLabel" runat="server" Imageurl='<%# Eval("ServiceImage") %>' width="300px" height="200px"  /></a></td></tr>
                        <tr><td><h2><asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' /></h2></td></tr>
                        <tr><td><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/addcart.png" /></td></tr>
                   </table>
                </td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server" align="center">
                    <tr runat="server">
                        <td runat="server">
                            <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HarrycontractorsConnectionString %>" SelectCommand="SELECT [Servicename], [ServiceImage], [Price] FROM [tblservices]"></asp:SqlDataSource>
        </p>
    
    
</asp:Content>
