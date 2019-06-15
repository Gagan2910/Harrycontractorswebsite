<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="editcustomers.aspx.cs" Inherits="Harrycontractorswebsite.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align: center">
        <table align="center" style="width: 100%">
            <tr>
                <td>
            <asp:Button ID="backbutton" runat="server" OnClick="Button2_Click" Text="Back" Font-Bold="True" />
                </td>
                <td>
                    <asp:Button ID="logoutbutton" runat="server" Font-Bold="True" OnClick="Button3_Click" Text="Logout" />
                </td>
            </tr>
        </table>
    </div>
<div style="text-align: center">
        <h1>Customer Management System&nbsp;
            </h1>
    </div>
    <div style="text-align: center">
        <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Enter customer email"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="Emailaddress" DataValueField="Emailaddress" AutoPostBack="True">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:HarrycontractorsConnectionString %>" SelectCommand="SELECT [Emailaddress] FROM [tblregistercustomer]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="Enter customer Firstname"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource4" DataTextField="Firstname" DataValueField="Firstname" AutoPostBack="True">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:HarrycontractorsConnectionString %>" SelectCommand="SELECT [Firstname] FROM [tblregistercustomer]"></asp:SqlDataSource>
    </div>
    <div style="text-align: center">
        <p>
            
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="Emailaddress" HorizontalAlign="Center" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowFooter="True">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" ValidationGroup="editgroup" Text="Update"></asp:LinkButton>
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
                    <asp:TemplateField HeaderText="Firstname" SortExpression="Firstname">
                        <EditItemTemplate>
                            
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Firstname") %>'></asp:TextBox>
                              <asp:RequiredFieldValidator ID="rfvfirstname" runat="server" ErrorMessage="Enter First Name" ControlToValidate="TextBox1" Text="*" ForeColor="Red" ValidationGroup="editgroup"></asp:RequiredFieldValidator> 
                            </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Firstname") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:textbox ID="txtfirstname" runat="server" ></asp:textbox>
                            <asp:RequiredFieldValidator ID="rfvfn" runat="server" ErrorMessage="Enter Firstname for new Record" ControlToValidate="txtfirstname" Text="*" ForeColor="Red" ValidationGroup="addgroup"></asp:RequiredFieldValidator>
                         </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Lastname" SortExpression="Lastname">
                        <EditItemTemplate>
                         <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Lastname") %>'></asp:TextBox>
                          <asp:RequiredFieldValidator ID="rfvlastname" runat="server" ErrorMessage="Enter last Name" ControlToValidate="TextBox2" Text="*" ForeColor="Red" ValidationGroup="editgroup"></asp:RequiredFieldValidator> 
                            </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Lastname") %>'></asp:Label>
                        </ItemTemplate>
                         <FooterTemplate>
                            <asp:textbox ID="txtlastname" runat="server" ></asp:textbox>
                            <asp:RequiredFieldValidator ID="rfvln" runat="server" ErrorMessage="Enter lastname for new Record" ControlToValidate="txtlastname" Text="*" ForeColor="Red" ValidationGroup="addgroup"></asp:RequiredFieldValidator>
                         </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Emailaddress" SortExpression="Emailaddress">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Emailaddress") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Emailaddress") %>'></asp:Label>
                        </ItemTemplate>
                          <FooterTemplate>
                            <asp:textbox ID="txtemail" runat="server" ></asp:textbox>
                            <asp:RequiredFieldValidator ID="rfvemail" runat="server" ErrorMessage="Enter email for new Record" ControlToValidate="txtlastname" Text="*" ForeColor="Red" ValidationGroup="addgroup"></asp:RequiredFieldValidator>
                         </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Phone" SortExpression="Phone">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Phone") %>'></asp:TextBox>
                            </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Phone") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:textbox ID="txtphone" runat="server" ></asp:textbox>
                         </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Mobile" SortExpression="Mobile">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Mobile") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvmobile" runat="server" ErrorMessage="Enter Mobile number" ControlToValidate="TextBox4" Text="*" ForeColor="Red" ValidationGroup="editgroup"></asp:RequiredFieldValidator> 
                            </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("Mobile") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:textbox ID="txtmobile" runat="server" ></asp:textbox>
                            <asp:RequiredFieldValidator ID="rfvmobile" runat="server" ErrorMessage="Enter mobile number for new Record" ControlToValidate="txtmobile" Text="*" ForeColor="Red" ValidationGroup="addgroup"></asp:RequiredFieldValidator>
                         </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Streetno" SortExpression="Streetno">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Streetno") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvstreetno" runat="server" ErrorMessage="Enter Street number" ControlToValidate="TextBox5" Text="*" ForeColor="Red" ValidationGroup="editgroup"></asp:RequiredFieldValidator> 
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("Streetno") %>'></asp:Label>
                        </ItemTemplate>
                         <FooterTemplate>
                            <asp:textbox ID="txtstreet" runat="server" ></asp:textbox>
                            <asp:RequiredFieldValidator ID="rfvstreet" runat="server" ErrorMessage="Enter street name for new Record" ControlToValidate="txtstreet" Text="*" ForeColor="Red" ValidationGroup="addgroup"></asp:RequiredFieldValidator>
                         </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Suburb" SortExpression="Suburb">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Suburb") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvsuburb" runat="server" ErrorMessage="Enter Suburb" ControlToValidate="TextBox6" Text="*" ForeColor="Red" ValidationGroup="editgroup"></asp:RequiredFieldValidator> 
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("Suburb") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:textbox ID="txtsuburb" runat="server" ></asp:textbox>
                            <asp:RequiredFieldValidator ID="rfvsuburb" runat="server" ErrorMessage="Enter Suburb for new Record" ControlToValidate="txtsuburb" Text="*" ForeColor="Red" ValidationGroup="addgroup"></asp:RequiredFieldValidator>
                         </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Country" SortExpression="Country">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Country") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvcountryname" runat="server" ErrorMessage="Enter Country Name" ControlToValidate="TextBox7" Text="*" ForeColor="Red" ValidationGroup="editgroup"></asp:RequiredFieldValidator> 
                            </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%# Bind("Country") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:textbox ID="txtcountry" runat="server" ></asp:textbox>
                            <asp:RequiredFieldValidator ID="rfvcountry" runat="server" ErrorMessage="Enter Country name for new Record" ControlToValidate="txtcountry" Text="*" ForeColor="Red" ValidationGroup="addgroup"></asp:RequiredFieldValidator>
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HarrycontractorsConnectionString %>" DeleteCommand="DELETE FROM [tblregistercustomer] WHERE [Emailaddress] = @Emailaddress" InsertCommand="INSERT INTO [tblregistercustomer] ([Firstname], [Lastname], [Emailaddress], [Phone], [Mobile], [Streetno], [Suburb], [Country]) VALUES (@Firstname, @Lastname, @Emailaddress, @Phone, @Mobile, @Streetno, @Suburb, @Country)" SelectCommand="SELECT [Firstname], [Lastname], [Emailaddress], [Phone], [Mobile], [Streetno], [Suburb], [Country] FROM [tblregistercustomer] WHERE (([Emailaddress] = @Emailaddress) AND ([Firstname] = @Firstname))" UpdateCommand="UPDATE [tblregistercustomer] SET [Firstname] = @Firstname, [Lastname] = @Lastname, [Phone] = @Phone, [Mobile] = @Mobile, [Streetno] = @Streetno, [Suburb] = @Suburb, [Country] = @Country WHERE [Emailaddress] = @Emailaddress">
                <DeleteParameters>
                    <asp:Parameter Name="Emailaddress" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Firstname" Type="String" />
                    <asp:Parameter Name="Lastname" Type="String" />
                    <asp:Parameter Name="Emailaddress" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="Mobile" Type="String" />
                    <asp:Parameter Name="Streetno" Type="String" />
                    <asp:Parameter Name="Suburb" Type="String" />
                    <asp:Parameter Name="Country" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" DefaultValue="gagan.randhawa941@gmail.com" Name="Emailaddress" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList2" DefaultValue="Gagandeep" Name="Firstname" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Firstname" Type="String" />
                    <asp:Parameter Name="Lastname" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="Mobile" Type="String" />
                    <asp:Parameter Name="Streetno" Type="String" />
                    <asp:Parameter Name="Suburb" Type="String" />
                    <asp:Parameter Name="Country" Type="String" />
                    <asp:Parameter Name="Emailaddress" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
    </div>
    <table align="center" border="0">
        <tr><td colspan="3" style="text-align:center"><asp:ValidationSummary ID="ValidationSummary1" DisplayMode="List" Font-Size="Medium" BackColor="Red" ForeColor="Black" BorderWidth="2px" runat="server" ValidationGroup="editgroup" Width="566px"  /></td></tr>
         <tr><td colspan="3" style="text-align:center"><asp:ValidationSummary ID="ValidationSummary2" DisplayMode="List" Font-Size="Medium" BackColor="Red" ForeColor="Black" BorderWidth="2px" runat="server" ValidationGroup="addgroup" Width="566px"  /></td></tr>
        </table>
</asp:Content>
