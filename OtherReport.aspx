<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="OtherReport.aspx.cs" Inherits="OtherReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" dir="rtl" class="Table90P">
        <tr>
            <td align="right" rowspan="2">
                <asp:ImageButton ID="imgbExport" runat="server" ImageUrl="~/Images/xls-download.png" OnClick="imgbExport_Click" Height="50px" Width="70px" />
            </td>
            <td align="right">
                            <asp:Label ID="lblSearch" runat="server" CssClass="greenLbl" Text="جستجو بر اساس"></asp:Label>
                            <asp:DropDownList ID="ddlSearch" runat="server" CssClass="ddListR">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem Value="1">وضعیت تاهل</asp:ListItem>
                                <asp:ListItem Value="2">جنسیت</asp:ListItem>
                                <asp:ListItem Value="3">دارا بودن وضعیت ایثارگری</asp:ListItem>
                                <asp:ListItem Value="4">دارا بودن فرزند</asp:ListItem>
                                <asp:ListItem Value="5">نوع استخدام</asp:ListItem>
                                <asp:ListItem Value="6">دارا بودن سابقه خدمت داوطلبانه در جبهه</asp:ListItem>
                                <asp:ListItem Value="7">دارا بودن سابقه خدمت غیر داوطلبانه در جبهه</asp:ListItem>
                                <asp:ListItem Value="8">دارا بودن سابقه رزمندگی</asp:ListItem>
                                <asp:ListItem Value="9">دارا بودن سابقه خدمت در مناطق جنگی</asp:ListItem>
                                <asp:ListItem Value="10">مدرک تحصیلی</asp:ListItem>
                            </asp:DropDownList>
                            <asp:Button ID="btnSearch" runat="server" CssClass="btn" Text="نمایش اطلاعات" OnClick="btnSearch_Click" />
                                    </td>
            <td align="left" rowspan="2">
                <asp:ImageButton ID="imgbHome" runat="server" Height="60px" ImageUrl="~/Images/Home2.png" Width="60px" OnClick="imgbHome_Click" />
                <asp:ImageButton ID="imgbExit" runat="server" ImageUrl="~/Images/exit2.JPG" OnClick="imgbExit_Click" />
                                    </td>
        </tr>
        <tr>
            <td align="right">
                            <asp:Label ID="lblMsg" runat="server" CssClass="RedLbl"></asp:Label>
                                    </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="gvEditInfo" runat="server" CssClass="label" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
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
            <td colspan="3">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

