<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SearchInfo.aspx.cs" Inherits="SearchInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" dir="rtl" class="Table90P">
        <tr>
            <td align="right">
                <asp:Label ID="Label1" runat="server" CssClass="BigLabel" Text="جستجو و ویرایش اطلاعات کارمندان"></asp:Label>
            </td>
            <td align="center">
&nbsp;</td>
            <td align="right">
                            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="MsgLblLink" NavigateUrl="~/IsUnique.aspx">ثبت کارمند نمونه</asp:HyperLink>
                                    </td>
            <td align="left">
                <asp:ImageButton ID="imgbHome" runat="server" Height="60px" ImageUrl="~/Images/Home2.png" Width="60px" OnClick="imgbHome_Click" />
                <asp:ImageButton ID="imgbExit" runat="server" ImageUrl="~/Images/exit2.JPG" OnClick="imgbExit_Click" />
                                    </td>
        </tr>
        <tr>
            <td align="right" colspan="4">
                            <asp:Label ID="lblSearch" runat="server" CssClass="greenLbl" Text="جستجو بر اساس"></asp:Label>
                            <asp:DropDownList ID="ddlSearch" runat="server" CssClass="label">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem Value="1">شماره پرونده</asp:ListItem>
                                <asp:ListItem Value="2">شماره کارمندی</asp:ListItem>
                                <asp:ListItem Value="3">کد ملی</asp:ListItem>
                                <asp:ListItem Value="4">نام خانوادگی</asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                            <asp:Button ID="btnSearch" runat="server" CssClass="btn" Text="نمایش اطلاعات" OnClick="btnSearch_Click" />
                                    </td>
        </tr>
        <tr>
            <td align="right" colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:GridView ID="gvEditInfo" runat="server" CellPadding="3" CssClass="label" GridLines="Vertical" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Width="100%" ForeColor="Black">
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:HyperLinkField HeaderText="اطلاعات بيشتر" 
                        DataNavigateUrlFields="PersonID"
                             Text="مشاهده اطلاعات فرد" DataNavigateUrlFormatString="EditInfo.aspx?PersonID={0}">
                            <ControlStyle ForeColor="#6666FF" />
                        </asp:HyperLinkField>
				        <asp:ImageField DataImageUrlField="PersonID" DataImageUrlFormatString="~/PersonelImage/{0}/thm-{0}.JPG">
                            <ControlStyle Height="50px" Width="50px" />
                        </asp:ImageField>
				    </Columns>
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

