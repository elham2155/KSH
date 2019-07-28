<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellspacing="1" class="Table50P" dir="rtl">
        <tr>
            <td align="right" colspan="2">
                <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/VoroozAaza.jpg" />
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#888F70" colspan="2">
                <asp:Label ID="Label4" runat="server" Text="*" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Label ID="msg" runat="server" CssClass="RedLbl"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="left">
                <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/NamKarbari.jpg" />
            </td>
            <td>
                <asp:TextBox ID="txtUid" runat="server" CssClass="txtBigLtr" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td align="left">
                <asp:Image ID="Image6" runat="server" ImageUrl="~/Images/RamzOboor.jpg" />
            </td>
            <td>
                <asp:TextBox ID="txtPas" runat="server" CssClass="txtBigLtr" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#888F70" colspan="2">
                <asp:Label ID="Label5" runat="server" Text="*" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="btnEnter" runat="server" CssClass="Bigbtn"  Text="ورود" OnClick="btnEnter_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

