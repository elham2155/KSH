<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewInfo.aspx.cs" Inherits="ViewInfo" %>

<%--<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>--%>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<%@ Register assembly="Microsoft.ReportViewer.Common, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" dir="rtl" class="Table90P">
        <tr>
            <td align="right">
                <asp:Label ID="Label1" runat="server" CssClass="BigLabel" Text="لیست کارکنان مرکز شوراهای حل اختلاف"></asp:Label>
            </td>
            <td align="left">&nbsp;</td>
            <td align="left">
                <asp:ImageButton ID="imgbHome" runat="server" Height="60px" ImageUrl="~/Images/Home2.png" Width="60px" OnClick="imgbHome_Click" />
                <asp:ImageButton ID="imgbExit" runat="server" ImageUrl="~/Images/exit2.JPG" OnClick="imgbExit_Click" />
                                    </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="gvReportInfo" runat="server" CellPadding="4" CssClass="label" GridLines="Horizontal" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" Width="100%">
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#333333" />
                    <Columns>
                        <asp:HyperLinkField HeaderText="اطلاعات بيشتر" 
                        DataNavigateUrlFields="PersonID"
                             Text="مشاهده اطلاعات فرد" DataNavigateUrlFormatString="ViewDetInfo.aspx?PersonID={0}">
                            <ControlStyle ForeColor="#6666FF" />
                        </asp:HyperLinkField>
				    </Columns>
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#487575" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#275353" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

