<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EmptyPositionsReport.aspx.cs" Inherits="EmptyPositions" %>

<%--<assemblies>

        <add assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845DCD8080CC91" />
        <add assembly="Microsoft.ReportViewer.Common, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845DCD8080CC91" />
    </assemblies>--%>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<%@ Register assembly="Microsoft.ReportViewer.Common, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" dir="rtl" class="Table90P">
        <tr>
            <td align="right">
                <asp:Label ID="Label1" runat="server" CssClass="BigLabel" Text="لیست پست های سازمانی خالی به تفکیک واحد سازمانی"></asp:Label>
    <asp:ScriptManager ID="ScriptManagerInfo" runat="server">
    </asp:ScriptManager>
            </td>
            <td align="left">
                <asp:ImageButton ID="imgbHome" runat="server" Height="60px" ImageUrl="~/Images/Home2.png" Width="60px" OnClick="imgbHome_Click" />
                <asp:ImageButton ID="imgbExit" runat="server" ImageUrl="~/Images/exit2.JPG" OnClick="imgbExit_Click" />
                                    </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <rsweb:ReportViewer ID="ReportViewerEmptyPosotion" runat="server" Font-Names="Tahoma" Font-Size="10pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="900px">
                    <localreport reportpath="ReportEmptyPosition.rdlc">
                        <DataSources>
                            <rsweb:ReportDataSource DataSourceId="ObjectDataSourceEmptyPosition" Name="DataSetEmptyPosition" />
                        </DataSources>
                    </localreport>
                </rsweb:ReportViewer>
                <asp:ObjectDataSource ID="ObjectDataSourceEmptyPosition" runat="server" SelectMethod="GetData" TypeName="KSHDBDataSetEmptyPositionTableAdapters.procSelect_EmptyPositionsTableAdapter" OldValuesParameterFormatString="original_{0}"></asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

