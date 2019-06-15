<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="editservices.aspx.cs" Inherits="Harrycontractorswebsite.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" style="width: 100%">
    <tr>
        <td style="text-align: center">
            <asp:Button ID="Backbutton" runat="server" Font-Bold="True" OnClick="Backbutton_Click" Text="Back" />
        </td>
        <td style="text-align: center">
            <asp:Button ID="Logoutbutton" runat="server" Font-Bold="True" Text="Logout" OnClick="Logoutbutton_Click" />
        </td>
    </tr>
</table>
  
    <div style="text-align: center">
        <h1 style="width: 1134px">&nbsp;&nbsp;&nbsp; Service Management System&nbsp;
            </h1>
    </div>
    <div style="text-align: center">
        <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Enter Service ID"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="ServiceID" DataValueField="ServiceID" style="margin-left: 30px" Width="286px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:HarrycontractorsConnectionString %>" SelectCommand="SELECT [ServiceID] FROM [tblservices]"></asp:SqlDataSource>
        <br />
        <br />
        </div>
<div style="text-align: center">
        <p>
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ServiceID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" ShowFooter="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" ValidationGroup="editgroup" CommandName="Update" Text="Update"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:Button ID="Button1" runat="server" OnClick="btnAddProduct_OnClick" CausesValidation="True" ValidationGroup="addgroup" CommandName="Add" Text="ADD"></asp:Button>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ServiceID" SortExpression="ServiceID">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("ServiceID") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("ServiceID") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:textbox ID="txtServiceID" runat="server" ></asp:textbox>
                            <asp:RequiredFieldValidator ID="rfvServiceID" runat="server" ErrorMessage="Enter Service ID for new Record" ControlToValidate="txtServiceID" Text="*" ForeColor="Red" ValidationGroup="addgroup"></asp:RequiredFieldValidator>
                         </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Servicename" SortExpression="Servicename">
                        <EditItemTemplate>
                           <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Servicename") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvServicename" runat="server" ErrorMessage="Enter Service Name" ControlToValidate="TextBox1" Text="*" ForeColor="Red" ValidationGroup="editgroup"></asp:RequiredFieldValidator> 
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Servicename") %>'></asp:Label>
                        </ItemTemplate>
                         <FooterTemplate>
                            <asp:textbox ID="txtServicename" runat="server" ></asp:textbox>
                        <asp:RequiredFieldValidator ID="rfvServicename" runat="server" ErrorMessage="Enter Service Name for new Record" ControlToValidate="txtServicename" Text="*" ForeColor="Red" ValidationGroup="addgroup"></asp:RequiredFieldValidator> 
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Price" SortExpression="Price">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                         <asp:RequiredFieldValidator ID="rfvPrice" runat="server" ErrorMessage="Enter Service Price" ControlToValidate="TextBox2" Text="*" ForeColor="Red" ValidationGroup="editgroup"></asp:RequiredFieldValidator> 
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                        </ItemTemplate>
                         <FooterTemplate>
                            <asp:textbox ID="txtPrice" runat="server" ></asp:textbox>
                        <asp:RequiredFieldValidator ID="rfvPrice" runat="server" ErrorMessage="Enter Service Price for new Record" ControlToValidate="txtPrice" Text="*" ForeColor="Red" ValidationGroup="addgroup"></asp:RequiredFieldValidator> 
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ServiceDescription" SortExpression="ServiceDescription">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ServiceDescription") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvServicedesc" runat="server" ErrorMessage="Enter Service Description" ControlToValidate="TextBox3" Text="*" ForeColor="Red" ValidationGroup="editgroup"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("ServiceDescription") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:textbox ID="txtServiceDescription" runat="server" ></asp:textbox>
                        <asp:RequiredFieldValidator ID="rfvServicedesc" runat="server" ErrorMessage="Enter Service Description for new Record" ControlToValidate="txtServiceDescription" Text="*" ForeColor="Red" ValidationGroup="addgroup"></asp:RequiredFieldValidator>
                            </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Serviceimage" SortExpression="Serviceimage">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Serviceimage") %>'></asp:TextBox>
                         <asp:RequiredFieldValidator ID="rfvServiceimage" runat="server" ErrorMessage="Enter Service image" ControlToValidate="TextBox4" Text="*" ForeColor="Red" ValidationGroup="editgroup"></asp:RequiredFieldValidator> 
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("Serviceimage") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:textbox ID="txtServiceimage" runat="server" ></asp:textbox>
                        <asp:RequiredFieldValidator ID="rfvServiceimage" runat="server" ErrorMessage="Enter Service image for new Record" ControlToValidate="txtServiceimage" Text="*" ForeColor="Red" ValidationGroup="addgroup"></asp:RequiredFieldValidator> 
                        </FooterTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HarrycontractorsConnectionString %>" DeleteCommand="DELETE FROM [tblservices] WHERE [ServiceID] = @ServiceID" InsertCommand="INSERT INTO [tblservices] ([Servicename], [Price], [ServiceImage], [ServiceID], [ServiceDescription]) VALUES (@Servicename, @Price, @ServiceImage, @ServiceID, @ServiceDescription)" SelectCommand="SELECT * FROM [tblservices] WHERE ([ServiceID] = @ServiceID)" UpdateCommand="UPDATE [tblservices] SET [Servicename] = @Servicename, [Price] = @Price, [ServiceImage] = @ServiceImage, [ServiceDescription] = @ServiceDescription WHERE [ServiceID] = @ServiceID">
                <DeleteParameters>
                    <asp:Parameter Name="ServiceID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Servicename" Type="String" />
                    <asp:Parameter Name="Price" Type="String" />
                    <asp:Parameter Name="ServiceImage" Type="String" />
                    <asp:Parameter Name="ServiceID" Type="Int32" />
                    <asp:Parameter Name="ServiceDescription" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList2" DefaultValue="101" Name="ServiceID" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Servicename" Type="String" />
                    <asp:Parameter Name="Price" Type="String" />
                    <asp:Parameter Name="ServiceImage" Type="String" />
                    <asp:Parameter Name="ServiceDescription" Type="String" />
                    <asp:Parameter Name="ServiceID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>

    </div>
    <table align="center" border="0">
        <tr><td colspan="3" style="text-align:center"><asp:ValidationSummary ID="ValidationSummary1" DisplayMode="List" Font-Size="Medium" BackColor="Red" ForeColor="Black" BorderWidth="2px" runat="server" ValidationGroup="editgroup" Width="566px"  /></td></tr>
        <tr><td colspan="3" style="text-align:center"> <asp:ValidationSummary ID="ValidationSummary2" DisplayMode="List" Font-Size="Medium" BackColor="Red" ForeColor="Black" BorderWidth="2px" runat="server" ValidationGroup="addgroup" /></td></tr>
    </table>
   
</asp:Content>
