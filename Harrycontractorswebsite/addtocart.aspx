<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="addtocart.aspx.cs" Inherits="Harrycontractorswebsite.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align: center">
        <br />
        <table align="center" style="width: 100%">
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click" Text="Continue Shopping" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Font-Bold="True" OnClick="Button2_Click" Text="Checkout" />
                </td>
            </tr>
        </table>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ServiceID" DataSourceID="SqlDataSource1" HorizontalAlign="Center" BorderWidth="0px" CellPadding="3" CellSpacing="2" Width="263px">
            <ItemTemplate>
                <table class="">
               <tr><td><h2> <asp:Label ID="ServicenameLabel" runat="server" Text='<%# Bind("Servicename") %>' /></h2></td></tr>
               <tr><td><asp:Image ID="ServiceImageLabel" runat="server" ImageUrl='<%# Bind("ServiceImage") %>' /></td></tr>
                    <tr><td><h2>$ <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' /></h2></td></tr>
                </table>
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HarrycontractorsConnectionString %>" SelectCommand="SELECT * FROM [tblservices] WHERE ([ServiceImage] = @ServiceImage)">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="images/image1.jpg" Name="ServiceImage" QueryStringField="ServiceImage" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
