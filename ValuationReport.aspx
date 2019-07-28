<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ValuationReport.aspx.cs" Inherits="ValuationReport" %>
<%--<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>--%>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<%@ Register assembly="Microsoft.ReportViewer.Common, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" dir="rtl" class="Table90P">
        <tr>
            <td align="right">
                <asp:Label ID="Label1" runat="server" CssClass="BigLabel" Text="ارزشیابی کارکنان مرکز شوراهای حل اختلاف"></asp:Label>
    <asp:ScriptManager ID="ScriptManagerInfo" runat="server">
    </asp:ScriptManager>
            </td>
            <td align="right">
                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="MsgLblLink" NavigateUrl="~/AbetGroupReport.aspx">اسامی واجدین شرایط دریافت طبقه تشویقی</asp:HyperLink>
            </td>
            <td align="left">
                <asp:ImageButton ID="imgbHome" runat="server" Height="60px" ImageUrl="~/Images/Home2.png" Width="60px" OnClick="imgbHome_Click" />
                <asp:ImageButton ID="imgbExit" runat="server" ImageUrl="~/Images/exit2.JPG" OnClick="imgbExit_Click" />
                                    </td>
        </tr>
        <tr>
            <td colspan="3">
                <rsweb:ReportViewer ID="ReportViewerValuation" runat="server" CssClass="label" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="900px">
                    <LocalReport ReportPath="ReportValuation.rdlc">
                        <DataSources>
                            <rsweb:ReportDataSource DataSourceId="ObjectDataSourceValuation" Name="DataSet1" />
                        </DataSources>
                    </LocalReport>
                </rsweb:ReportViewer>
                <asp:ObjectDataSource ID="ObjectDataSourceValuation" runat="server" SelectMethod="GetData" TypeName="KSHDBDataSetValuationTableAdapters.procSelect_ValuationTableAdapter"></asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="3">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

