<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="Users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Style.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 29px;
        }
        .auto-style2 {
            height: 76px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellspacing="1" class="Table90P" dir="rtl">
        <tr>
            <td align="right" class="auto-style2">
                <asp:Label ID="Label1" runat="server" CssClass="BigLabel" 
                    Text="مشاهده لیست کاربران و تعریف کاربر جدید"></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:KSHDBConnectionString %>" 
                    DeleteCommand="DELETE FROM [Users] WHERE [UserName] = @original_UserName" 
                    InsertCommand="INSERT INTO [Users] ([UserName], [Password], [UserFullName], [InsertAccess], [ReportAccess], [FullAccess]) VALUES (@UserName, @Password, @UserFullName, @InsertAccess, @ReportAccess, @FullAccess)" 
                    SelectCommand="SELECT * FROM [Users] ORDER BY [UserFullName]" 
                    UpdateCommand="UPDATE [Users] SET [Password] = @Password, [UserFullName] = @UserFullName, [InsertAccess] = @InsertAccess, [ReportAccess] = @ReportAccess, [FullAccess] = @FullAccess WHERE [UserName] = @original_UserName" OldValuesParameterFormatString="original_{0}">
                    <DeleteParameters>
                        <asp:Parameter Name="original_UserName" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="UserFullName" Type="String" />
                        <asp:Parameter Name="InsertAccess" Type="Boolean" />
                        <asp:Parameter Name="ReportAccess" Type="Boolean" />
                        <asp:Parameter Name="FullAccess" Type="Boolean" />
                        <asp:Parameter Name="original_UserName" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="UserFullName" Type="String" />
                        <asp:Parameter Name="InsertAccess" Type="Boolean" />
                        <asp:Parameter Name="ReportAccess" Type="Boolean" />
                        <asp:Parameter Name="FullAccess" Type="Boolean" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
            <td align="left" class="auto-style2">
                <asp:ImageButton ID="imgbHome" runat="server" Height="60px" ImageUrl="~/Images/Home2.png" Width="60px" OnClick="imgbHome_Click" />
                <asp:ImageButton ID="imgbExit" runat="server" ImageUrl="~/Images/exit2.JPG" OnClick="imgbExit_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#404A35" BorderStyle="Groove" BorderWidth="1px" 
                    CellPadding="3" CssClass="label" DataKeyNames="UserName" 
                    DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" 
                    ShowFooter="True" AllowPaging="True" Width="100%">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" CancelText="انصراف" DeleteText="حذف" EditText="ویرایش" UpdateText="تایید" >
                        <ItemStyle ForeColor="#993333" />
                        </asp:CommandField>
                        <asp:BoundField DataField="UserName" HeaderText="نام کاربری" ReadOnly="True" 
                            SortExpression="UserName" >
                        </asp:BoundField>
                        <asp:BoundField DataField="Password" HeaderText="رمزعبور" SortExpression="Password" >
                        </asp:BoundField>
                        <asp:BoundField DataField="UserFullName" HeaderText="نام کاربر" SortExpression="UserFullName" >
                        </asp:BoundField>
                        <asp:CheckBoxField DataField="InsertAccess" HeaderText="ورود" 
                            SortExpression="InsertAccess" >
                        </asp:CheckBoxField>
                        <asp:CheckBoxField DataField="ReportAccess" HeaderText="گزارش" 
                            SortExpression="ReportAccess" >
                        </asp:CheckBoxField>
                        <asp:CheckBoxField DataField="FullAccess" HeaderText="دسترسی کامل" 
                            SortExpression="FullAccess" >
                        </asp:CheckBoxField>
                    </Columns>
                    <FooterStyle BackColor="#607250" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#607250" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td align="center" bgcolor="White" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="UserName" Width=100%
                    DataSourceID="SqlDataSource1">
                    <InsertItemTemplate>
                        <br />
                        <table align="center" cellspacing="1" class="Table90P" dir="rtl">
                            <tr>
                                <td colspan="3">
                                    <asp:Label ID="Label2" runat="server" CssClass="label" Text="نام کاربری"></asp:Label>
                                    &nbsp;<asp:TextBox ID="UserNameTextBox" runat="server" CssClass="txtMediumLtr" Text='<%# Bind("UserName") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="Label3" runat="server" CssClass="label" Text="رمزعبور"></asp:Label>
                                    &nbsp;<asp:TextBox ID="PasswordTextBox" runat="server" CssClass="txtMediumLtr" Text='<%# Bind("Password") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4">&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="4">
                                    <asp:Label ID="Label11" runat="server" CssClass="RedLbl" Text="سطوح دسترسی کاربر"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <asp:Label ID="Label4" runat="server" CssClass="label" Text=" "></asp:Label>
                                    <asp:CheckBox ID="InsertAccessCheckBox" runat="server" Checked='<%# Bind("InsertAccess") %>' />
                                    <asp:Label ID="Label10" runat="server" CssClass="label" Text="ورود اطلاعات"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <asp:CheckBox ID="ReportAccessCheckBox" runat="server" Checked='<%# Bind("ReportAccess") %>' />
                                    <asp:Label ID="Label7" runat="server" CssClass="label" Text="گزارش گیری"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1" colspan="3">
                                    <asp:CheckBox ID="FullAccessCheckBox" runat="server" Checked='<%# Bind("FullAccess") %>' />
                                    <asp:Label ID="Label8" runat="server" CssClass="label" Text="دسترسی کامل"></asp:Label>
                                </td>
                                <td class="auto-style1">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="3">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="3" class="auto-style1">
                                    <asp:Label ID="Label9" runat="server" CssClass="label" Text="نام کاربر"></asp:Label>
                                    &nbsp;<asp:TextBox ID="UserFullNameTextBox" runat="server" Text='<%# Bind("UserFullName") %>' />
                                </td>
                                <td class="auto-style1"></td>
                            </tr>
                            <tr>
                                <td colspan="3">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td align="left">
                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" CssClass="RedLbl" Text="تایید" />
                                </td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="greenLbl" Text="انصراف" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                        <br />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <table align="center" cellspacing="1" dir="rtl">
                            <tr>
                                <td>
                                    <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" CssClass="RedLbl" Text="تعریف کاربر جدید" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:FormView>
            </td>
        </tr>
        <tr>
            <td align="center" bgcolor="White" colspan="2">
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

