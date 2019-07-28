<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Archive.aspx.cs" Inherits="OtherReport" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" dir="rtl" class="Table90P">
        <tr>
            <td align="right">
                        &nbsp; 
                            &nbsp;<asp:Label ID="Label4" runat="server" CssClass="BigLabel" Text="آرشیو اطلاعات سیستم"></asp:Label>
            </td>
            <td align="left">
                <asp:ImageButton ID="imgbHome" runat="server" Height="60px" ImageUrl="~/Images/Home2.png" Width="60px" OnClick="imgbHome_Click" />
                <asp:ImageButton ID="imgbExit" runat="server" ImageUrl="~/Images/exit2.JPG" OnClick="imgbExit_Click" />
                                    </td>
        </tr>
        <tr>
            <td colspan="2">
                <table align="center" class="auto-style1" dir="rtl">
                    <tr>
                        <td align="right">
                            <asp:Label ID="Label2" runat="server" CssClass="label" Text="انتخاب آیتم برای مشاهده و آرشیو"></asp:Label>
                        &nbsp; <asp:DropDownList ID="ddlArchive" runat="server" CssClass="ddListR">
                                <asp:ListItem Value="0">-----</asp:ListItem>
                                <asp:ListItem Value="1">آرشیو اطلاعات شخصی کارکنان شورای حل اختلاف</asp:ListItem>
                                <asp:ListItem Value="2">آرشیو اطلاعات رتبه کارکنان شورای حل اختلاف</asp:ListItem>
                                <asp:ListItem Value="3">آرشیو اطلاعات طبقه کارکنان شورای حل اختلاف</asp:ListItem>
                                <asp:ListItem Value="4">آرشیو اطلاعات مدرک تحصیلی کارکنان شورای حل اختلاف</asp:ListItem>
                                <asp:ListItem Value="5">آرشیو اطلاعات سابقه کارکنان شورای حل اختلاف</asp:ListItem>
                                <asp:ListItem Value="6">آرشیو اطلاعات ارزشیابی کارکنان شورای حل اختلاف</asp:ListItem>
                                <asp:ListItem Value="7">آرشیو اطلاعات واحدهای سازمانی شورای حل اختلاف</asp:ListItem>
                                <asp:ListItem Value="8">آرشیو اطلاعات پست های سازمانی شورای حل اختلاف</asp:ListItem>
                                <asp:ListItem Value="9">آرشیو اطلاعات کاربران سیستم</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;<asp:Button ID="btnSearch" runat="server" CssClass="btn" Text="نمایش اطلاعات" OnClick="btnSearch_Click" />
                        </td>
                        <td align="right">
                            <asp:Label ID="lblDL" runat="server" CssClass="greenLbl" Text="دانلود"></asp:Label>
                <asp:ImageButton ID="imgbExport" runat="server" ImageUrl="~/Images/xls-download.png" OnClick="imgbExport_Click" Height="50px" Width="70px" />
                                    </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <table align="center" class="auto-style1" dir="rtl">
                    <tr>
                        <td>
                <asp:Label ID="Label3" runat="server" CssClass="label" Text="نگهداری اطلاعات در آرشیو سیستم"></asp:Label>
            &nbsp;<asp:FileUpload ID="FileUpload1" runat="server" />
                            &nbsp;<asp:Button ID="btnStore" runat="server" CssClass="btn" Text="آپلود اطلاعات در سیستم" OnClick="btnStore_Click" />
                        </td>
                        <td align="left">
                            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="MsgLblLink" NavigateUrl="~/DeleteInfo.aspx">حذف اطلاعات کارکنان</asp:HyperLink>
                                    </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="right">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" align="right">
                <asp:GridView ID="gvArchiveInfo" runat="server" CssClass="label" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="right">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KSHDBConnectionString %>" DeleteCommand="DELETE FROM [Archive] WHERE [ArchiveID] = @original_ArchiveID" InsertCommand="INSERT INTO [Archive] ([ArchiveTitle], [ArchiveLink]) VALUES (@ArchiveTitle, @ArchiveLink)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Archive] ORDER BY [ArchiveTitle]" UpdateCommand="UPDATE [Archive] SET [ArchiveTitle] = @ArchiveTitle, [ArchiveLink] = @ArchiveLink WHERE [ArchiveID] = @original_ArchiveID">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_ArchiveID" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="ArchiveTitle" Type="String" />
                                    <asp:Parameter Name="ArchiveLink" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="ArchiveTitle" Type="String" />
                                    <asp:Parameter Name="ArchiveLink" Type="String" />
                                    <asp:Parameter Name="original_ArchiveID" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="right">
                <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" CssClass="label" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ArchiveID" DataSourceID="SqlDataSource1" PageSize="20">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:BoundField DataField="ArchiveID" HeaderText="ArchiveID" InsertVisible="False" ReadOnly="True" SortExpression="ArchiveID" />
                        <asp:BoundField DataField="ArchiveTitle" HeaderText="ArchiveTitle" SortExpression="ArchiveTitle" />
                        <asp:HyperLinkField DataNavigateUrlFields="ArchiveLink" DataTextField="ArchiveLink" HeaderText="فایل قابل دریافت" DataNavigateUrlFormatString="~/Archive/{0}.xls" />
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

