<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="IsUnique.aspx.cs" Inherits="IsUnique" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" dir="rtl" class="Table90P">
        <tr>
            <td align="right">
                <asp:Label ID="Label1" runat="server" CssClass="BigLabel">لیست کارمندان و ثبت کارمند نمونه</asp:Label>
            </td>
            <td align="left">
                <asp:ImageButton ID="imgbHome" runat="server" Height="60px" ImageUrl="~/Images/Home2.png" Width="60px" OnClick="imgbHome_Click" />
                <asp:ImageButton ID="imgbExit" runat="server" ImageUrl="~/Images/exit2.JPG" OnClick="imgbExit_Click" />
                                    </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:SqlDataSource ID="SqlDataSourceIsUnique" runat="server" ConnectionString="<%$ ConnectionStrings:KSHDBConnectionString %>" DeleteCommand="DELETE FROM [Person] WHERE [PersonID] = @PersonID" InsertCommand="INSERT INTO [Person] ([CaseNumber], [PersonelNumber], [MelliCode], [Name], [Family], [IsUnique], [IsUniqueYear]) VALUES (@CaseNumber, @PersonelNumber, @MelliCode, @Name, @Family, @IsUnique, @IsUniqueYear)" SelectCommand="SELECT [PersonID], [CaseNumber], [PersonelNumber], [MelliCode], [Name], [Family], [IsUnique], [IsUniqueYear] FROM [Person]" UpdateCommand="UPDATE [Person] SET [CaseNumber] = @CaseNumber, [PersonelNumber] = @PersonelNumber, [MelliCode] = @MelliCode, [Name] = @Name, [Family] = @Family, [IsUnique] = @IsUnique, [IsUniqueYear] = @IsUniqueYear WHERE [PersonID] = @PersonID">
                    <DeleteParameters>
                        <asp:Parameter Name="PersonID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="CaseNumber" Type="String" />
                        <asp:Parameter Name="PersonelNumber" Type="String" />
                        <asp:Parameter Name="MelliCode" Type="String" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Family" Type="String" />
                        <asp:Parameter Name="IsUnique" Type="Boolean" />
                        <asp:Parameter Name="IsUniqueYear" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="CaseNumber" Type="String" />
                        <asp:Parameter Name="PersonelNumber" Type="String" />
                        <asp:Parameter Name="MelliCode" Type="String" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Family" Type="String" />
                        <asp:Parameter Name="IsUnique" Type="Boolean" />
                        <asp:Parameter Name="IsUniqueYear" Type="String" />
                        <asp:Parameter Name="PersonID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="right">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" CssClass="label" DataKeyNames="PersonID" DataSourceID="SqlDataSourceIsUnique" PageSize="50" Width="100%">
                    <Columns>
                        <asp:CommandField CancelText="انصراف" EditText="ویرایش" ShowEditButton="True" UpdateText="تایید">
                        <ControlStyle ForeColor="#003366" />
                        </asp:CommandField>
                        <asp:BoundField DataField="CaseNumber" HeaderText="شماره پرونده" SortExpression="CaseNumber" />
                        <asp:BoundField DataField="PersonelNumber" HeaderText="شماره کارمندی" SortExpression="PersonelNumber" />
                        <asp:BoundField DataField="MelliCode" HeaderText="کد ملی" SortExpression="MelliCode" />
                        <asp:BoundField DataField="Name" HeaderText="نام" SortExpression="Name" />
                        <asp:BoundField DataField="Family" HeaderText="نام خانوادگی" SortExpression="Family" />
                        <asp:CheckBoxField DataField="IsUnique" HeaderText="کارمند نمونه" SortExpression="IsUnique" />
                        <asp:BoundField DataField="IsUniqueYear" HeaderText="سال اخذ کارمند نمونه" SortExpression="IsUniqueYear" />
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

