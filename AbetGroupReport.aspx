<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AbetGroupReport.aspx.cs" Inherits="AbetGroupReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 250px;
        }
        .auto-style3 {
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" dir="rtl" class="Table90P">
        <tr>
            <td align="left" colspan="4">
                <asp:ImageButton ID="imgbHome" runat="server" Height="60px" ImageUrl="~/Images/Home2.png" Width="60px" OnClick="imgbHome_Click" />
                <asp:ImageButton ID="imgbExit" runat="server" ImageUrl="~/Images/exit2.JPG" OnClick="imgbExit_Click" />
            </td>
        </tr>
        <tr>
            <td align="right" colspan="4">
                <asp:Label ID="Label1" runat="server" CssClass="BigLabel" Text="واجدین شرایط دریافت طبقه تشویقی"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" colspan="4">
                            <asp:Label ID="lblSearch" runat="server" CssClass="greenLbl" Text="لطفا سال جاری را وارد کنید"></asp:Label>
                            &nbsp;<asp:TextBox ID="txtYear" runat="server" MaxLength="2" Width="23px"></asp:TextBox>
                            &nbsp;<asp:Label ID="lblCount" runat="server" CssClass="greenLbl" Text=" تعداد سالهای مورد نظر تا سال جاری"></asp:Label>
&nbsp;<asp:TextBox ID="txtCount" runat="server" MaxLength="1" Width="18px"></asp:TextBox>
                                    &nbsp;<asp:Label ID="Label2" runat="server" CssClass="greenLbl" Text=" حداقل نمره ارزشیابی مورد قبول"></asp:Label>
&nbsp;<asp:TextBox ID="txtGrade" runat="server" MaxLength="2" Width="23px">85</asp:TextBox>
                                    </td>
        </tr>
        <tr>
            <td align="right" colspan="2">
&nbsp;</td>
            <td align="right" colspan="2">
                            <asp:Label ID="lblDL" runat="server" CssClass="greenLbl" Text="دانلود اطلاعات واجدین شرایط دریافت طبقه تشویقی"></asp:Label>
&nbsp;<asp:ImageButton ID="imgbExport" runat="server" ImageUrl="~/Images/xls-download.png" OnClick="imgbExport_Click" Height="50px" Width="70px" />
                                    </td>
        </tr>
        <tr>
            <td colspan="4">
&nbsp;<asp:Button ID="btnSearch" runat="server" CssClass="btn" Text="نمایش اطلاعات" OnClick="btnSearch_Click" />
                                    &nbsp;&nbsp;<asp:Button ID="btnNew" runat="server" CssClass="btn"  Text="گزارش جدید" OnClick="btnNew_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="4" class="auto-style3">
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:GridView ID="GridView4" runat="server" CellPadding="4" CssClass="label" ForeColor="#333333" GridLines="None" Width="100%">
                    <AlternatingRowStyle BackColor="White" />
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
            </td>
        </tr>
        <tr>
            <td colspan="4" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" align="right">
                <asp:Label ID="Label3" runat="server" CssClass="BigLabel" Text="سایر اطلاعات"></asp:Label>
            </td>
        </tr>
        <tr>
            <td valign="top">
                <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="label" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
            </td>
            <td class="auto-style2" valign="top" colspan="2">
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="label" Width="100%" CaptionAlign="Top">
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
            <td valign="top">
                <asp:GridView ID="GridView3" runat="server" CellPadding="4" CssClass="label" ForeColor="#333333" GridLines="None" Width="100%" CaptionAlign="Top">
                    <AlternatingRowStyle BackColor="White" />
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

