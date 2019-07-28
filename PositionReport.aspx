<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PositionReport.aspx.cs" Inherits="PositionReport" %>

<%--<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>--%>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<%@ Register assembly="Microsoft.ReportViewer.Common, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 66px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" dir="rtl" class="Table90P">
        <tr>
            <td class="auto-style1" colspan="2" align="right">
                <asp:Label ID="Label1" runat="server" CssClass="BigLabel" Text="لیست پست های سازمانی مرکز شوراهای حل اختلاف"></asp:Label>
    <asp:ScriptManager ID="ScriptManagerInfo" runat="server">
    </asp:ScriptManager>
            </td>
            <td align="left" class="auto-style1">
                <asp:ImageButton ID="imgbHome" runat="server" Height="60px" ImageUrl="~/Images/Home2.png" Width="60px" OnClick="imgbHome_Click" />
                <asp:ImageButton ID="imgbExit" runat="server" ImageUrl="~/Images/exit2.JPG" OnClick="imgbExit_Click" />
                                    </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td align="left">&nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                
    </rsweb:ReportViewer>
                <rsweb:ReportViewer ID="ReportViewerPositions" runat="server" Font-Names="Tahoma" Font-Size="10pt" WaitMessageFont-Names="Tahoma" WaitMessageFont-Size="14pt" Width="900px">
                    <LocalReport ReportPath="ReportPositions.rdlc">
                        <DataSources>
                            <rsweb:ReportDataSource DataSourceId="ObjectDataSourcePositions" Name="DataSetPositions" />
                        </DataSources>
                    </LocalReport>
                </rsweb:ReportViewer>
                <asp:ObjectDataSource ID="ObjectDataSourcePositions" runat="server" SelectMethod="GetData" TypeName="KSHDBDataSetPositionsTableAdapters.procSelect_PositionsTableAdapter"></asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="3">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

