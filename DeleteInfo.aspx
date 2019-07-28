<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DeleteInfo.aspx.cs" Inherits="DeleteInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" dir="rtl" class="Table90P">
        <tr>
            <td align="right">
                <asp:Label ID="Label2" runat="server" CssClass="BigLabel" Text="حذف اطلاعات کارمندان"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td align="left">
                <asp:ImageButton ID="imgbHome" runat="server" Height="60px" ImageUrl="~/Images/Home2.png" Width="60px" OnClick="imgbHome_Click" />
                <asp:ImageButton ID="imgbExit" runat="server" ImageUrl="~/Images/exit2.JPG" OnClick="imgbExit_Click" />
                                    </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:KSHDBConnectionString %>" DeleteCommand="DELETE FROM [Person] WHERE [PersonID] = @original_PersonID AND [CaseNumber] = @original_CaseNumber AND [PersonelNumber] = @original_PersonelNumber AND [MelliCode] = @original_MelliCode AND [Name] = @original_Name AND [Family] = @original_Family" InsertCommand="INSERT INTO [Person] ([CaseNumber], [PersonelNumber], [MelliCode], [Name], [Family]) VALUES (@CaseNumber, @PersonelNumber, @MelliCode, @Name, @Family)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [PersonID], [CaseNumber], [PersonelNumber], [MelliCode], [Name], [Family] FROM [Person]" UpdateCommand="UPDATE [Person] SET [CaseNumber] = @CaseNumber, [PersonelNumber] = @PersonelNumber, [MelliCode] = @MelliCode, [Name] = @Name, [Family] = @Family WHERE [PersonID] = @original_PersonID AND [CaseNumber] = @original_CaseNumber AND [PersonelNumber] = @original_PersonelNumber AND [MelliCode] = @original_MelliCode AND [Name] = @original_Name AND [Family] = @original_Family">
                    <DeleteParameters>
                        <asp:Parameter Name="original_PersonID" Type="Int32" />                        
                        <asp:Parameter Name="original_CaseNumber" Type="String" />
                        <asp:Parameter Name="original_PersonelNumber" Type="String" />
                        <asp:Parameter Name="original_MelliCode" Type="String" />
                        <asp:Parameter Name="original_Name" Type="String" />
                        <asp:Parameter Name="original_Family" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>                        
                        <asp:Parameter Name="CaseNumber" Type="String" />
                        <asp:Parameter Name="PersonelNumber" Type="String" />
                        <asp:Parameter Name="MelliCode" Type="String" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Family" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>                        
                        <asp:Parameter Name="CaseNumber" Type="String" />
                        <asp:Parameter Name="PersonelNumber" Type="String" />
                        <asp:Parameter Name="MelliCode" Type="String" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Family" Type="String" />
                        <asp:Parameter Name="original_PersonID" Type="Int32" />                        
                        <asp:Parameter Name="original_CaseNumber" Type="String" />
                        <asp:Parameter Name="original_PersonelNumber" Type="String" />
                        <asp:Parameter Name="original_MelliCode" Type="String" />
                        <asp:Parameter Name="original_Name" Type="String" />
                        <asp:Parameter Name="original_Family" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="label" DataKeyNames="PersonID" DataSourceID="SqlDataSource2" PageSize="25" Width="100%">
                    <Columns>
                        <asp:CommandField DeleteText="حذف اطلاعات شخص" ShowDeleteButton="True" >
                        <ControlStyle ForeColor="#993333" />
                        </asp:CommandField>
                        <asp:BoundField DataField="PersonID" HeaderText="شماره" InsertVisible="False" ReadOnly="True" SortExpression="PersonID" />
                        <asp:BoundField DataField="Name" HeaderText="نام" SortExpression="Name" />
                        <asp:BoundField DataField="Family" HeaderText="نام خانوادگی" SortExpression="Family" />
                        <asp:BoundField DataField="CaseNumber" HeaderText="شماره پرونده" SortExpression="CaseNumber" />
                        <asp:BoundField DataField="PersonelNumber" HeaderText="شماره کارمندی" SortExpression="PersonelNumber" />
                        <asp:BoundField DataField="MelliCode" HeaderText="کد ملی" SortExpression="MelliCode" />
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle ForeColor="#330099" HorizontalAlign="Center" BackColor="#FFFFCC" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

