<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Reports.aspx.cs" Inherits="Reports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" dir="rtl" class="Table90P">
        <tr>
            <td align="center">
                <asp:Image ID="Image7" runat="server" Height="50px" ImageUrl="~/Images/Macbook Pro.png" Width="50px" />
            </td>
            <td align="right">
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/ReportInfo.jpg" OnClick="ImageButton2_Click" />
            </td>
            <td align="center">
                <asp:Image ID="Image15" runat="server" Height="50px" ImageUrl="~/Images/EditText.png" Width="50px" />
            </td>
            <td align="right">
                <asp:ImageButton ID="imgbValuation" runat="server" ImageUrl="~/Images/Arzeshyabi.jpg" OnClick="imgbValuation_Click" />
            </td>
            <td align="left">
                <asp:ImageButton ID="imgbHome" runat="server" Height="60px" ImageUrl="~/Images/Home2.png" Width="60px" OnClick="imgbHome_Click" />
                <asp:ImageButton ID="imgbExit" runat="server" ImageUrl="~/Images/exit2.JPG" OnClick="imgbExit_Click" />
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Image ID="Image18" runat="server" Height="50px" ImageUrl="~/Images/Folder.png" Width="50px" />
            </td>
            <td align="right">
                <asp:ImageButton ID="imhbMainList" runat="server" ImageUrl="~/Images/MainList.jpg" OnClick="imhbMainList_Click" />
            </td>
            <td align="center">
                <asp:Image ID="Image16" runat="server" Height="50px" ImageUrl="~/Images/iCal.png" Width="50px" />
            </td>
            <td align="right">
                <asp:ImageButton ID="imgbRetired" runat="server" ImageUrl="~/Images/Bazneshastegi.jpg" OnClick="imgbRetired_Click" />
            </td>
            <td align="right">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                <asp:Image ID="Image14" runat="server" Height="50px" ImageUrl="~/Images/MyiDisk.png" Width="50px" />
            </td>
            <td align="right">
                <asp:ImageButton ID="imgbPositionPerUnit" runat="server" ImageUrl="~/Images/PositionsPerUnit.jpg" OnClick="imgbPositionPerUnit_Click" />
            </td>
            <td align="center">
                <asp:Image ID="Image17" runat="server" Height="50px" ImageUrl="~/Images/Documents.png" Width="50px" />
            </td>
            <td align="right">
                <asp:ImageButton ID="imgbUnique" runat="server" ImageUrl="~/Images/KarmandNemune.jpg" OnClick="imgbUnique_Click" />
            </td>
            <td align="right">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                <asp:Image ID="Image12" runat="server" Height="50px" ImageUrl="~/Images/MacintoshHD.png" Width="50px" />
            </td>
            <td align="right">
                <asp:ImageButton ID="imgbEmptyPositionPerUnit" runat="server" ImageUrl="~/Images/EmptyPositionPerUnit.jpg" OnClick="imgbEmptyPositionPerUnit_Click" />
            </td>
            <td align="center">
                <asp:Image ID="Image19" runat="server" Height="50px" ImageUrl="~/Images/Text.png" Width="50px" />
            </td>
            <td align="right">
                <asp:ImageButton ID="imgbOthers" runat="server" ImageUrl="~/Images/OtherReports.jpg" OnClick="imgbOthers_Click" />
            </td>
            <td align="right">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

