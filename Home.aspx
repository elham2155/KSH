<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellspacing="1" class="Table80P" dir="rtl">
        <tr>
            <td align="right" colspan="3">
                <asp:Label ID="Label1" runat="server" CssClass="RedLbl" Text="کاربر گرامی  خانم / آقای"></asp:Label>
&nbsp;<asp:Label ID="lblName" runat="server" CssClass="greenLbl"></asp:Label>
&nbsp;<asp:Label ID="Label3" runat="server" CssClass="RedLbl" Text="خوش آمدید"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center"  style="margin-right: 40px">
                <asp:ImageButton ID="btnEnter" runat="server" ImageUrl="~/Images/VoroodEtelaat.jpg" OnClick="btnEnter_Click" />
            </td>
            <td align="center" >
                <asp:ImageButton ID="btnInfo" runat="server" ImageUrl="~/Images/PersonelInfo.jpg" OnClick="btnInfo_Click" />
            </td>
            <td align="center" style="margin-right: 40px">
                <asp:ImageButton ID="btnReport" runat="server" ImageUrl="~/Images/Gozareshha.jpg" OnClick="btnReport_Click" />
            </td>
        </tr>
        <tr>
            <td  style="margin-right: 40px" align="center">
                <asp:Label ID="msgEnter" runat="server" CssClass="RedLbl"></asp:Label>
            </td>
            <td align="center" >
                <asp:Label ID="msgInfo" runat="server" CssClass="RedLbl"></asp:Label>
            </td>
            <td style="margin-right: 40px" align="center">
                <asp:Label ID="msgReport" runat="server" CssClass="RedLbl"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" style="margin-right: 40px">
                <asp:ImageButton ID="btnPosition" runat="server" ImageUrl="~/Images/PostSazmani.jpg" OnClick="btnPosition_Click" />
            </td>
            <td align="center" >
                <asp:ImageButton ID="btnUsers" runat="server" ImageUrl="~/Images/TarifKarbaran.jpg" OnClick="btnUsers_Click" />
            </td>
            <td align="center" style="margin-right: 40px">
                <asp:ImageButton ID="btnArchive" runat="server" ImageUrl="~/Images/ArshivEtelaat.jpg" OnClick="btnArchive_Click" />
            </td>
        </tr>
        <tr>
            <td align="center" style="margin-right: 40px">
                <asp:Label ID="msgPosition" runat="server" CssClass="RedLbl"></asp:Label>
            </td>
            <td align="center" >
                <asp:Label ID="msgUsers" runat="server" CssClass="RedLbl"></asp:Label>
            </td>
            <td align="center" style="margin-right: 40px">
                <asp:Label ID="msgArchive" runat="server" CssClass="RedLbl"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" style="margin-right: 40px">
                <asp:ImageButton ID="btnHelp" runat="server" ImageUrl="~/Images/RahnamayeSystem.jpg" OnClick="btnHelp_Click" />
            </td>
            <td align="center" >
                &nbsp;</td>
            <td align="center" style="margin-right: 40px">
                <asp:ImageButton ID="btnExit" runat="server" ImageUrl="~/Images/Khorooj.jpg" OnClick="btnExit_Click" />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

