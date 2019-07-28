<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MainListReport.aspx.cs" Inherits="MainListReport" %>

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
            <td>
    <asp:ScriptManager ID="ScriptManagerInfo" runat="server">
    </asp:ScriptManager>
            </td>
            <td align="left">
                <asp:ImageButton ID="imgbHome" runat="server" Height="60px" ImageUrl="~/Images/Home2.png" Width="60px" OnClick="imgbHome_Click" />
                <asp:ImageButton ID="imgbExit" runat="server" ImageUrl="~/Images/exit2.JPG" OnClick="imgbExit_Click" />
                                    </td>
        </tr>
        <tr>
            <td colspan="3">
                <rsweb:ReportViewer ID="ReportViewerMainList" runat="server" CssClass="label" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="900px">
                    <LocalReport ReportPath="ReportMainList.rdlc">
                        <DataSources>
                            <rsweb:ReportDataSource DataSourceId="ObjectDataSourceMainList" Name="DataSetMainList" />
                        </DataSources>
                    </LocalReport>
                </rsweb:ReportViewer>
                <asp:ObjectDataSource ID="ObjectDataSourceMainList" runat="server" SelectMethod="GetData" TypeName="KSHDBDataSetMainListTableAdapters.procSelect_PersonTableAdapter"></asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="3">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

