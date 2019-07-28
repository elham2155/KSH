<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewDetInfo.aspx.cs" Inherits="ViewDetInfo" Debug="true" %>

<%--<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>--%>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<%@ Register assembly="Microsoft.ReportViewer.Common, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 20px;
        }
    .auto-style3 {
        height: 23px;
    }
        .auto-style5 {
            height: 30px;
        }
        .auto-style6 {
            height: 30px;
            width: 253px;
        }
        .auto-style7 {
            width: 253px;
        }
        .auto-style8 {
            height: 20px;
            width: 253px;
        }
        .auto-style9 {
            height: 23px;
            width: 253px;
        }
        .auto-style10 {
            height: 32px;
        }
        .auto-style11 {
            width: 253px;
            height: 32px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" dir="rtl" class="Table90P">
        <tr>
            <td align="right">
                <asp:Label ID="lblMsg" runat="server" CssClass="greenLbl" Visible="False"></asp:Label>
                <asp:ImageButton ID="imgbPrint" runat="server" CssClass="PersonelImage" ImageUrl="~/Images/Printer1.jpg" OnClick="imgbPrint_Click"  />
            </td>
            <td>
                &nbsp;</td>
            <td align="left">
                <asp:ImageButton ID="imgbHome" runat="server" Height="60px" ImageUrl="~/Images/Home2.png" Width="60px" OnClick="imgbHome_Click" />
                <asp:ImageButton ID="imgbExit" runat="server" ImageUrl="~/Images/exit2.JPG" OnClick="imgbExit_Click" />
                                    </td>
        </tr>
        <tr>
            <td colspan="3" align="center">
                <asp:Panel ID="Panel1" runat="server" Direction="RightToLeft" Font-Size="6px" Font-Names="B Nazanin" BorderColor="#999999">
                    <table align="center" class="auto-style1" dir="rtl" style="border: thin solid #808080">
                        <tr>
                            <td>
                                <table align="center" border="1px" class="auto-style1" dir="rtl" frame="border" style="border-width: thin; border-color: #808080; border-style: groove;">
                                    <tr>
                                        <td bgcolor="#999999" colspan="4" width="900px">
                                            <table align="center" class="auto-style1" dir="rtl" style="border-width: 1px; border-color: #808080; border-style: solid;">
                                                <tr>
                                                    <td bgcolor="#999999" class="auto-style2" colspan="5" width="900px" align="right">
                                                        <asp:Label ID="Label172" runat="server" CssClass="BigLabel" Font-Bold="True" Text="فرم استخراج اطلاعات کارکنان قوه قضائیه"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style2">
                                                        <asp:Label ID="Label173" runat="server" Font-Bold="True" Text="نام واحد"></asp:Label>
                                                    </td>
                                                    <td class="auto-style2" colspan="3">
                                                        <asp:Label ID="Label174" runat="server" CssClass="RedLbl" Font-Bold="True" Text="مرکز شوراهای حل اختلاف"></asp:Label>
                                                        &nbsp;-
                                                        <asp:Label ID="lblUnit" runat="server" CssClass="label" Font-Bold="True"></asp:Label>
                                                    </td>
                                                    <td align="center" rowspan="4" valign="middle">
                                                        <asp:Image ID="imgPerson" runat="server" BorderColor="Gray" CssClass="PersonelImage" ImageAlign="Top" ImageUrl="~/Images/Person.jpg" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="Label175" runat="server" Font-Bold="True" Text="نام و نام خانوادگی"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblName" runat="server" CssClass="label" Font-Bold="True"></asp:Label>
                                                        <asp:Label ID="lblFamily" runat="server" CssClass="label" Font-Bold="True"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="Label176" runat="server" Font-Bold="True" Text="شماره پرونده"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblCaseNumber" runat="server" CssClass="label" Font-Bold="True"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="Label177" runat="server" Font-Bold="True" Text="پست سازمانی"></asp:Label>
                                                    </td>
                                                    <td dir="rtl">&nbsp;
                                                        <asp:Label ID="lblPosition" runat="server" CssClass="label"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="Label178" runat="server" Font-Bold="True" Text="شماره کارمندی"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblPersonelNumber" runat="server" CssClass="label" Font-Bold="True"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="Label179" runat="server" Font-Bold="True" Text="شماره پست سازمانی"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblPositionID" runat="server" CssClass="label"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="Label180" runat="server" Font-Bold="True" Text="کد ملی"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblMelliCode" runat="server" CssClass="label" Font-Bold="True"></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5">
                                            <asp:Label ID="Label14" runat="server" Font-Bold="True" Text="نام پدر"></asp:Label>
                                        </td>
                                        <td class="auto-style5">
                                            <asp:Label ID="lblFName" runat="server" CssClass="label"></asp:Label>
                                        </td>
                                        <td class="auto-style5">
                                            <asp:Label ID="Label21" runat="server" Font-Bold="True" Text="تاریخ تولد"></asp:Label>
                                        </td>
                                        <td class="auto-style6">
                                            <asp:Label ID="lblBirthDate" runat="server" CssClass="label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td bgcolor="#CCCCCC">
                                            <asp:Label ID="Label15" runat="server" Font-Bold="True" Text="شماره شناسنامه"></asp:Label>
                                        </td>
                                        <td bgcolor="#CCCCCC">
                                            <asp:Label ID="lblCertificateNumber" runat="server" CssClass="label"></asp:Label>
                                        </td>
                                        <td bgcolor="#CCCCCC">
                                            <asp:Label ID="Label22" runat="server" Font-Bold="True" Text="استان محل تولد"></asp:Label>
                                        </td>
                                        <td bgcolor="#CCCCCC" class="auto-style7" dir="rtl">
                                            <asp:Label ID="lblBirthProvince" runat="server" CssClass="label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label16" runat="server" Font-Bold="True" Text="محل صدور"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblIssuePlace" runat="server" CssClass="label"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label23" runat="server" Font-Bold="True" Text="شهر محل تولد"></asp:Label>
                                        </td>
                                        <td class="auto-style7">
                                            <asp:Label ID="lblBirthCity" runat="server" CssClass="label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td bgcolor="#CCCCCC" class="auto-style2">
                                            <asp:Label ID="Label17" runat="server" Font-Bold="True" Text="جنسیت"></asp:Label>
                                        </td>
                                        <td bgcolor="#CCCCCC" class="auto-style2">
                                            <asp:Label ID="lblGender" runat="server" CssClass="label"></asp:Label>
                                            &nbsp;<asp:DropDownList ID="ddlGender" runat="server" CssClass="label" Visible="False">
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem Value="زن">زن</asp:ListItem>
                                                <asp:ListItem Value="مرد">مرد</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td bgcolor="#CCCCCC" class="auto-style2">
                                            <asp:Label ID="Label24" runat="server" Font-Bold="True" Text="بخش محل تولد"></asp:Label>
                                        </td>
                                        <td bgcolor="#CCCCCC" class="auto-style8">
                                            <asp:Label ID="lblBirthZone" runat="server" CssClass="label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3">
                                            <asp:Label ID="Label28" runat="server" Font-Bold="True" Text="وضعیت تاهل"></asp:Label>
                                        </td>
                                        <td class="auto-style3">
                                            <asp:Label ID="lblMaritalState" runat="server" CssClass="label"></asp:Label>
                                            &nbsp;<asp:DropDownList ID="ddlMaritalState" runat="server" CssClass="label" Visible="False">
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem Value="مجرد">مجرد</asp:ListItem>
                                                <asp:ListItem Value="متاهل">متاهل</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td class="auto-style3">
                                            <asp:Label ID="Label109" runat="server" Font-Bold="True" Text="شغل همسر"></asp:Label>
                                        </td>
                                        <td class="auto-style9">
                                            <asp:Label ID="lblPartnerJob" runat="server" CssClass="label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td bgcolor="#CCCCCC" class="auto-style3">
                                            <asp:Label ID="Label110" runat="server" Font-Bold="True" Text="تاریخ ازدواج"></asp:Label>
                                        </td>
                                        <td bgcolor="#CCCCCC" class="auto-style3">
                                            <asp:Label ID="lblMarriageDate" runat="server" CssClass="label"></asp:Label>
                                        </td>
                                        <td bgcolor="#CCCCCC" class="auto-style3">
                                            <asp:Label ID="Label111" runat="server" Font-Bold="True" Text="تعداد فرزندان"></asp:Label>
                                        </td>
                                        <td bgcolor="#CCCCCC" class="auto-style9">
                                            <asp:Label ID="lblChildren" runat="server" CssClass="label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3">
                                            <asp:Label ID="Label112" runat="server" Font-Bold="True" Text="تعداد فرزندان مشمول"></asp:Label>
                                        </td>
                                        <td class="auto-style3">
                                            <asp:Label ID="lblLiableChildren" runat="server" CssClass="label"></asp:Label>
                                        </td>
                                        <td class="auto-style3">
                                            <asp:Label ID="Label18" runat="server" Font-Bold="True" Text="دین"></asp:Label>
                                        </td>
                                        <td class="auto-style9">
                                            <asp:Label ID="lblReligion" runat="server" CssClass="label"></asp:Label>
                                            &nbsp;<asp:DropDownList ID="ddlReligion" runat="server" CssClass="label" Visible="False">
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem Value="مسلمان">مسلمان</asp:ListItem>
                                                <asp:ListItem Value="زرتشتی">زرتشتی</asp:ListItem>
                                                <asp:ListItem Value="مسیحی">مسیحی</asp:ListItem>
                                                <asp:ListItem Value="کلیمی">کلیمی</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td bgcolor="#CCCCCC" class="auto-style3">
                                            <asp:Label ID="Label113" runat="server" Font-Bold="True" Text="وضعیت نظام وظیفه"></asp:Label>
                                        </td>
                                        <td bgcolor="#CCCCCC" class="auto-style3">
                                            <asp:Label ID="lblMilitaryState" runat="server" CssClass="label"></asp:Label>
                                            &nbsp;<asp:DropDownList ID="ddlMilitaryState" runat="server" CssClass="label" Visible="False">
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem Value="زن-بی نیاز از خدمت">زن-بی نیاز از خدمت</asp:ListItem>
                                                <asp:ListItem Value="انجام داده">انجام داده</asp:ListItem>
                                                <asp:ListItem Value="مشمول">مشمول</asp:ListItem>
                                                <asp:ListItem Value="معاف">معاف</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td bgcolor="#CCCCCC" class="auto-style3">
                                            <asp:Label ID="Label25" runat="server" Font-Bold="True" Text="وضعیت ایثارگری"></asp:Label>
                                        </td>
                                        <td bgcolor="#CCCCCC" class="auto-style9">
                                            <asp:Label ID="lblRemissionState" runat="server" CssClass="label"></asp:Label>
                                            &nbsp;<asp:DropDownList ID="ddlRemissionState" runat="server" CssClass="label" Visible="False">
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem Value="آزاده">آزاده</asp:ListItem>
                                                <asp:ListItem Value="جانباز">جانباز</asp:ListItem>
                                                <asp:ListItem Value="فرزند شهید">فرزند شهید</asp:ListItem>
                                                <asp:ListItem Value="فرزند جانباز">فرزند جانباز</asp:ListItem>
                                                <asp:ListItem Value="رزمنده">رزمنده</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3">
                                            <asp:Label ID="Label114" runat="server" Font-Bold="True" Text="مدت نظام وظیفه"></asp:Label>
                                        </td>
                                        <td class="auto-style3">
                                            <asp:Label ID="lblMilitaryYear" runat="server" CssClass="label"></asp:Label>
                                            <asp:Label ID="Label115" runat="server" CssClass="label" Text="سال"></asp:Label>
                                            <asp:Label ID="lblMilitaryMonth" runat="server" CssClass="label"></asp:Label>
                                            <asp:Label ID="Label116" runat="server" CssClass="label" Text="ماه"></asp:Label>
                                            <asp:Label ID="lblMilitaryDay" runat="server" CssClass="label"></asp:Label>
                                            <asp:Label ID="Label117" runat="server" CssClass="label" Text="روز"></asp:Label>
                                        </td>
                                        <td class="auto-style3">
                                            <asp:Label ID="Label118" runat="server" Font-Bold="True" Text="درصد جانبازی"></asp:Label>
                                        </td>
                                        <td class="auto-style9">
                                            <asp:Label ID="lblEscapePersentage" runat="server" CssClass="label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td bgcolor="#CCCCCC" class="auto-style3">
                                            <asp:Label ID="Label119" runat="server" Font-Bold="True" Text="مدت اسارت"></asp:Label>
                                        </td>
                                        <td bgcolor="#CCCCCC" class="auto-style3">
                                            <asp:Label ID="lblCaptivityYear" runat="server" CssClass="label"></asp:Label>
                                            <asp:Label ID="Label67" runat="server" CssClass="label" Text="سال"></asp:Label>
                                            <asp:Label ID="lblCaptivityMonth" runat="server" CssClass="label"></asp:Label>
                                            <asp:Label ID="Label69" runat="server" CssClass="label" Text="ماه"></asp:Label>
                                            <asp:Label ID="lblCaptivityDay" runat="server" CssClass="label"></asp:Label>
                                            <asp:Label ID="Label68" runat="server" CssClass="label" Text="روز"></asp:Label>
                                        </td>
                                        <td bgcolor="#CCCCCC" class="auto-style3">
                                            <asp:Label ID="Label33" runat="server" Font-Bold="True" Text="تلفن"></asp:Label>
                                        </td>
                                        <td bgcolor="#CCCCCC" class="auto-style9">
                                            <asp:Label ID="lblTell" runat="server" CssClass="label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label34" runat="server" Font-Bold="True" Text="کد پستی"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblPostalCode" runat="server" CssClass="label"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label36" runat="server" Font-Bold="True" Text="پست الکترونیکی"></asp:Label>
                                        </td>
                                        <td class="auto-style7">
                                            <asp:Label ID="lblEmail" runat="server" CssClass="label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td bgcolor="#CCCCCC">
                                            <asp:Label ID="Label157" runat="server" Font-Bold="True" Text="آدرس"></asp:Label>
                                        </td>
                                        <td bgcolor="#CCCCCC" colspan="3">
                                            <asp:Label ID="lblAddress" runat="server" CssClass="label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label152" runat="server" Font-Bold="True" Text="طبقه"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblGroup" runat="server" CssClass="label"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label153" runat="server" Font-Bold="True" Text="رسته"></asp:Label>
                                        </td>
                                        <td class="auto-style7">
                                            <asp:Label ID="lblClass" runat="server" CssClass="label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td bgcolor="#CCCCCC">
                                            <asp:Label ID="Label154" runat="server" Font-Bold="True" Text="تعداد طبقه تشویقی"></asp:Label>
                                        </td>
                                        <td bgcolor="#CCCCCC">
                                            <asp:Label ID="lblAbetGroup" runat="server" CssClass="label"></asp:Label>
                                        </td>
                                        <td bgcolor="#CCCCCC">
                                            <asp:Label ID="Label155" runat="server" Font-Bold="True" Text="رشته شغلی"></asp:Label>
                                        </td>
                                        <td bgcolor="#CCCCCC" class="auto-style7">
                                            <asp:Label ID="lblBranch" runat="server" CssClass="label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label156" runat="server" Font-Bold="True" Text="تعداد طبقه ارفاقی"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblleniencyGroup" runat="server" CssClass="label"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label158" runat="server" Font-Bold="True" Text="تاریخ استخدام آزمایشی"></asp:Label>
                                        </td>
                                        <td class="auto-style7">
                                            <asp:Label ID="lblTestDate" runat="server" CssClass="label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td bgcolor="#CCCCCC" class="auto-style10">
                                            <asp:Label ID="Label43" runat="server" Font-Bold="True" Text="طبقه ارزیابی"></asp:Label>
                                        </td>
                                        <td bgcolor="#CCCCCC" class="auto-style10">
                                            <asp:Label ID="lblValuationGroup" runat="server" CssClass="label"></asp:Label>
                                        </td>
                                        <td bgcolor="#CCCCCC" class="auto-style10">
                                            <asp:Label ID="Label159" runat="server" Font-Bold="True" Text="تاریخ استخدام قطعی"></asp:Label>
                                        </td>
                                        <td bgcolor="#CCCCCC" class="auto-style11">
                                            <asp:Label ID="lblFullEMPDate" runat="server" CssClass="label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label160" runat="server" Font-Bold="True" Text="رتبه"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblBase" runat="server" CssClass="label"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label161" runat="server" Font-Bold="True" Text="تاریخ ورود به خدمت دولتی"></asp:Label>
                                        </td>
                                        <td class="auto-style7">
                                            <asp:Label ID="lblEntranceDate" runat="server" CssClass="label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td bgcolor="#CCCCCC">
                                            <asp:Label ID="Label162" runat="server" Font-Bold="True" Text="نوع استخدام"></asp:Label>
                                        </td>
                                        <td bgcolor="#CCCCCC" align="right" colspan="3">
                                            <asp:Label ID="lblEmploymentType" runat="server" CssClass="label"></asp:Label>
                                            <asp:DropDownList ID="ddlEmploymentType" runat="server" CssClass="label" Visible="False" TabIndex="35">
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem Value="رسمی">رسمی</asp:ListItem>
                                                <asp:ListItem Value="رسمی آزمایشی">رسمی آزمایشی</asp:ListItem>
                                                <asp:ListItem Value="پیمانی-تمام وقت">پیمانی-تمام وقت</asp:ListItem>
                                                <asp:ListItem Value="قرارداد معین">قرارداد معین</asp:ListItem>
                                                <asp:ListItem>قرارداد کارگری</asp:ListItem>
                                                <asp:ListItem>روزمزد</asp:ListItem>
                                                <asp:ListItem Value="پروِژه ای">پروِژه ای</asp:ListItem>
                                                <asp:ListItem>قضائی</asp:ListItem>
                                                <asp:ListItem Value="سایر">سایر</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label125" runat="server" Font-Bold="True" Text="سنوات تجربی"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblTentativeYear" runat="server" CssClass="label"></asp:Label>
                                            <asp:Label ID="Label163" runat="server" CssClass="label" Text="سال"></asp:Label>
                                            <asp:Label ID="lblTentativeMonth" runat="server" CssClass="label"></asp:Label>
                                            <asp:Label ID="Label164" runat="server" CssClass="label" Text="ماه"></asp:Label>
                                            <asp:Label ID="lblTentativeDay" runat="server" CssClass="label"></asp:Label>
                                            <asp:Label ID="Label165" runat="server" CssClass="label" Text="روز"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label141" runat="server" Font-Bold="True" Text="سابقه خدمت"></asp:Label>
                                        </td>
                                        <td class="auto-style7">
                                            <asp:Label ID="lblStateYear" runat="server" CssClass="label"></asp:Label>
                                            <asp:Label ID="Label142" runat="server" CssClass="label" Text="سال"></asp:Label>
                                            <asp:Label ID="lblStateMonth" runat="server" CssClass="label"></asp:Label>
                                            <asp:Label ID="Label143" runat="server" CssClass="label" Text="ماه"></asp:Label>
                                            <asp:Label ID="lblStateDay" runat="server" CssClass="label"></asp:Label>
                                            <asp:Label ID="Label144" runat="server" CssClass="label" Text="روز"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td bgcolor="#CCCCCC">
                                            <asp:Label ID="Label54" runat="server" Font-Bold="True" Text="مدت خدمت داوطلبانه در جبهه"></asp:Label>
                                        </td>
                                        <td bgcolor="#CCCCCC">
                                            <asp:Label ID="lblApplicantYear" runat="server" CssClass="label"></asp:Label>
                                            <asp:Label ID="Label72" runat="server" CssClass="label" Text="سال"></asp:Label>
                                            <asp:Label ID="lblApplicantMonth" runat="server" CssClass="label"></asp:Label>
                                            <asp:Label ID="Label84" runat="server" CssClass="label" Text="ماه"></asp:Label>
                                            <asp:Label ID="lblApplicantDay" runat="server" CssClass="label"></asp:Label>
                                            <asp:Label ID="Label78" runat="server" CssClass="label" Text="روز"></asp:Label>
                                        </td>
                                        <td bgcolor="#CCCCCC">
                                            <asp:Label ID="Label126" runat="server" Font-Bold="True" Text="مدت خدمت غیر داوطلبانه در جبهه"></asp:Label>
                                        </td>
                                        <td bgcolor="#CCCCCC" class="auto-style7">
                                            <asp:Label ID="lblUnApplicantYear" runat="server" CssClass="label"></asp:Label>
                                            <asp:Label ID="Label127" runat="server" CssClass="label" Text="سال"></asp:Label>
                                            <asp:Label ID="lblUnApplicantMonth" runat="server" CssClass="label"></asp:Label>
                                            <asp:Label ID="Label128" runat="server" CssClass="label" Text="ماه"></asp:Label>
                                            <asp:Label ID="lblUnApplicantDay" runat="server" CssClass="label"></asp:Label>
                                            <asp:Label ID="Label129" runat="server" CssClass="label" Text="روز"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label130" runat="server" Font-Bold="True" Text="مدت رزمندگی"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblWarYear" runat="server" CssClass="label"></asp:Label>
                                            <asp:Label ID="Label131" runat="server" CssClass="label" Text="سال"></asp:Label>
                                            <asp:Label ID="lblWarMonth" runat="server" CssClass="label"></asp:Label>
                                            <asp:Label ID="Label132" runat="server" CssClass="label" Text="ماه"></asp:Label>
                                            <asp:Label ID="lblWarDay" runat="server" CssClass="label"></asp:Label>
                                            <asp:Label ID="Label133" runat="server" CssClass="label" Text="روز"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label166" runat="server" Font-Bold="True" Text="مدت خدمت در مناطق جنگی"></asp:Label>
                                        </td>
                                        <td class="auto-style7">
                                            <asp:Label ID="lblWarPlaceYear" runat="server" CssClass="label"></asp:Label>
                                            <asp:Label ID="Label167" runat="server" CssClass="label" Text="سال"></asp:Label>
                                            <asp:Label ID="lblWarPlaceMonth" runat="server" CssClass="label"></asp:Label>
                                            <asp:Label ID="Label168" runat="server" CssClass="label" Text="ماه"></asp:Label>
                                            <asp:Label ID="lblWarPlaceDay" runat="server" CssClass="label"></asp:Label>
                                            <asp:Label ID="Label169" runat="server" CssClass="label" Text="روز"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td bgcolor="#CCCCCC">
                                            <asp:Label ID="Label59" runat="server" Font-Bold="True" Text="ذخیره مرخصی تا سال قبل"></asp:Label>
                                        </td>
                                        <td bgcolor="#CCCCCC">
                                            <asp:Label ID="lblLastDay" runat="server" CssClass="label"></asp:Label>
                                            &nbsp;<asp:Label ID="Label62" runat="server" CssClass="label" Text="روز"></asp:Label>
                                            &nbsp;<asp:Label ID="lblLastHoure" runat="server" CssClass="label"></asp:Label>
                                            &nbsp;<asp:Label ID="Label63" runat="server" CssClass="label" Text="ساعت"></asp:Label>
                                        </td>
                                        <td bgcolor="#CCCCCC">
                                            <asp:Label ID="Label138" runat="server" Font-Bold="True" Text="مرخصی مصرفی سال جاری"></asp:Label>
                                        </td>
                                        <td bgcolor="#CCCCCC" class="auto-style7">
                                            <asp:Label ID="lblthisDay" runat="server" CssClass="label"></asp:Label>
                                            <asp:Label ID="Label170" runat="server" CssClass="label" Text="روز"></asp:Label>
                                            <asp:Label ID="lblThisHoure" runat="server" CssClass="label"></asp:Label>
                                            <asp:Label ID="Label171" runat="server" CssClass="label" Text="ساعت"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table align="center" class="auto-style1" dir="rtl" style="border: thin solid #808080">
                                    <tr>
                                        <td width="900px" bgcolor="#999999" colspan="2" align="right">
                                            <asp:Label ID="Label104" runat="server" CssClass="BigLabel"  Text="مدارک تحصیلی" Font-Bold="True"></asp:Label>
                                            <asp:SqlDataSource ID="SqlDataSourceField" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:KSHDBConnectionString %>" DeleteCommand="DELETE FROM [PersonField] WHERE [PersonFieldID] = @original_PersonFieldID AND [PersonID] = @original_PersonID AND [FieldName] = @original_FieldName AND (([UniversityName] = @original_UniversityName) OR ([UniversityName] IS NULL AND @original_UniversityName IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([Degree] = @original_Degree) OR ([Degree] IS NULL AND @original_Degree IS NULL))" InsertCommand="INSERT INTO [PersonField] ([PersonID], [FieldName], [UniversityName], [Date], [Degree]) VALUES (@PersonID, @FieldName, @UniversityName, @Date, @Degree)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [PersonField] WHERE ([PersonID] = @PersonID)" UpdateCommand="UPDATE [PersonField] SET [PersonID] = @PersonID, [FieldName] = @FieldName, [UniversityName] = @UniversityName, [Date] = @Date, [Degree] = @Degree WHERE [PersonFieldID] = @original_PersonFieldID AND [PersonID] = @original_PersonID AND [FieldName] = @original_FieldName AND (([UniversityName] = @original_UniversityName) OR ([UniversityName] IS NULL AND @original_UniversityName IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([Degree] = @original_Degree) OR ([Degree] IS NULL AND @original_Degree IS NULL))">
                                                <DeleteParameters>
                                                    <asp:Parameter Name="original_PersonFieldID" Type="Int32" />
                                                    <asp:Parameter Name="original_PersonID" Type="Int32" />
                                                    <asp:Parameter Name="original_FieldName" Type="String" />
                                                    <asp:Parameter Name="original_UniversityName" Type="String" />
                                                    <asp:Parameter Name="original_Date" Type="String" />
                                                    <asp:Parameter Name="original_Degree" Type="String" />
                                                </DeleteParameters>
                                                <InsertParameters>
                                                    <asp:Parameter Name="PersonID" Type="Int32" />
                                                    <asp:Parameter Name="FieldName" Type="String" />
                                                    <asp:Parameter Name="UniversityName" Type="String" />
                                                    <asp:Parameter Name="Date" Type="String" />
                                                    <asp:Parameter Name="Degree" Type="String" />
                                                </InsertParameters>
                                                <SelectParameters>
                                                    <asp:SessionParameter Name="PersonID" SessionField="PID" Type="Int32" />
                                                </SelectParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="PersonID" Type="Int32" />
                                                    <asp:Parameter Name="FieldName" Type="String" />
                                                    <asp:Parameter Name="UniversityName" Type="String" />
                                                    <asp:Parameter Name="Date" Type="String" />
                                                    <asp:Parameter Name="Degree" Type="String" />
                                                    <asp:Parameter Name="original_PersonFieldID" Type="Int32" />
                                                    <asp:Parameter Name="original_PersonID" Type="Int32" />
                                                    <asp:Parameter Name="original_FieldName" Type="String" />
                                                    <asp:Parameter Name="original_UniversityName" Type="String" />
                                                    <asp:Parameter Name="original_Date" Type="String" />
                                                    <asp:Parameter Name="original_Degree" Type="String" />
                                                </UpdateParameters>
                                            </asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  CellPadding="4" DataKeyNames="PersonFieldID" DataSourceID="SqlDataSourceField" GridLines="Horizontal" PageSize="4" width="100%" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px">
                                                <Columns>
                                                    <asp:BoundField DataField="FieldName" HeaderText="مدرک تحصیلی" SortExpression="FieldName" >
                                                    <HeaderStyle HorizontalAlign="Right" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="Degree" HeaderText="رشته تحصیلی" SortExpression="Degree" >
                                                    <HeaderStyle HorizontalAlign="Right" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="Date" HeaderText="تاریخ اخذ مدرک" SortExpression="Date" >
                                                    <HeaderStyle HorizontalAlign="Right" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="UniversityName" HeaderText="دانشگاه/موسسه محل تحصیل" SortExpression="UniversityName" >
                                                    <HeaderStyle HorizontalAlign="Right" />
                                                    </asp:BoundField>
                                                </Columns>
                                                <FooterStyle BackColor="White" ForeColor="#333333" />
                                                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                                                <RowStyle BackColor="White" ForeColor="#333333" />
                                                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                                                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                                <SortedAscendingHeaderStyle BackColor="#487575" />
                                                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                                <SortedDescendingHeaderStyle BackColor="#275353" />
                                            </asp:GridView>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td bgcolor="#999999" align="right">
                                            <asp:Label ID="Label106" runat="server" CssClass="BigLabel" Font-Bold="True" Text="طبقه"></asp:Label>
                                            <asp:SqlDataSource ID="SqlDataSourceGroup" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:KSHDBConnectionString %>" DeleteCommand="DELETE FROM [Groupe] WHERE [GroupID] = @original_GroupID AND [PersonID] = @original_PersonID AND [ClassDate] = @original_ClassDate AND [ClassGrade] = @original_ClassGrade" InsertCommand="INSERT INTO [Groupe] ([PersonID], [ClassDate], [ClassGrade]) VALUES (@PersonID, @ClassDate, @ClassGrade)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT Top (4) * FROM [Groupe] WHERE ([PersonID] = @PersonID)" UpdateCommand="UPDATE [Groupe] SET [PersonID] = @PersonID, [ClassDate] = @ClassDate, [ClassGrade] = @ClassGrade WHERE [GroupID] = @original_GroupID AND [PersonID] = @original_PersonID AND [ClassDate] = @original_ClassDate AND [ClassGrade] = @original_ClassGrade">
                                                <DeleteParameters>
                                                    <asp:Parameter Name="original_GroupID" Type="Int32" />
                                                    <asp:Parameter Name="original_PersonID" Type="Int32" />
                                                    <asp:Parameter Name="original_ClassDate" Type="String" />
                                                    <asp:Parameter Name="original_ClassGrade" Type="String" />
                                                </DeleteParameters>
                                                <InsertParameters>
                                                    <asp:Parameter Name="PersonID" Type="Int32" />
                                                    <asp:Parameter Name="ClassDate" Type="String" />
                                                    <asp:Parameter Name="ClassGrade" Type="String" />
                                                </InsertParameters>
                                                <SelectParameters>
                                                    <asp:SessionParameter Name="PersonID" SessionField="PID" Type="Int32" />
                                                </SelectParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="PersonID" Type="Int32" />
                                                    <asp:Parameter Name="ClassDate" Type="String" />
                                                    <asp:Parameter Name="ClassGrade" Type="String" />
                                                    <asp:Parameter Name="original_GroupID" Type="Int32" />
                                                    <asp:Parameter Name="original_PersonID" Type="Int32" />
                                                    <asp:Parameter Name="original_ClassDate" Type="String" />
                                                    <asp:Parameter Name="original_ClassGrade" Type="String" />
                                                </UpdateParameters>
                                            </asp:SqlDataSource>
                                        </td>
                                        <td bgcolor="#999999" align="right">
                                            <asp:Label ID="Label107" runat="server" CssClass="BigLabel" Font-Bold="True" Text="رتبه"></asp:Label>
                                            <asp:SqlDataSource ID="SqlDataSourceBase" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:KSHDBConnectionString %>" DeleteCommand="DELETE FROM [Base] WHERE [BaseID] = @original_BaseID AND [PersonID] = @original_PersonID AND [BaseDate] = @original_BaseDate AND [BaseGrade] = @original_BaseGrade" InsertCommand="INSERT INTO [Base] ([PersonID], [BaseDate], [BaseGrade]) VALUES (@PersonID, @BaseDate, @BaseGrade)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT Top (4) * FROM [Base] WHERE ([PersonID] = @PersonID)" UpdateCommand="UPDATE [Base] SET [PersonID] = @PersonID, [BaseDate] = @BaseDate, [BaseGrade] = @BaseGrade WHERE [BaseID] = @original_BaseID AND [PersonID] = @original_PersonID AND [BaseDate] = @original_BaseDate AND [BaseGrade] = @original_BaseGrade">
                                                <DeleteParameters>
                                                    <asp:Parameter Name="original_BaseID" Type="Int32" />
                                                    <asp:Parameter Name="original_PersonID" Type="Int32" />
                                                    <asp:Parameter Name="original_BaseDate" Type="String" />
                                                    <asp:Parameter Name="original_BaseGrade" Type="String" />
                                                </DeleteParameters>
                                                <InsertParameters>
                                                    <asp:Parameter Name="PersonID" Type="Int32" />
                                                    <asp:Parameter Name="BaseDate" Type="String" />
                                                    <asp:Parameter Name="BaseGrade" Type="String" />
                                                </InsertParameters>
                                                <SelectParameters>
                                                    <asp:SessionParameter Name="PersonID" SessionField="PID" Type="Int32" />
                                                </SelectParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="PersonID" Type="Int32" />
                                                    <asp:Parameter Name="BaseDate" Type="String" />
                                                    <asp:Parameter Name="BaseGrade" Type="String" />
                                                    <asp:Parameter Name="original_BaseID" Type="Int32" />
                                                    <asp:Parameter Name="original_PersonID" Type="Int32" />
                                                    <asp:Parameter Name="original_BaseDate" Type="String" />
                                                    <asp:Parameter Name="original_BaseGrade" Type="String" />
                                                </UpdateParameters>
                                            </asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td valign="top">
                                            <asp:GridView ID="GridViewGroup" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="GroupID" DataSourceID="SqlDataSourceGroup" GridLines="Horizontal" PageSize="4" Width="100%">
                                                <Columns>
                                                    <asp:BoundField DataField="ClassDate" HeaderText="تاریخ ارتقاء" SortExpression="ClassDate">
                                                    <HeaderStyle HorizontalAlign="Right" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="ClassGrade" HeaderText="طبقه اخذ شده" SortExpression="ClassGrade">
                                                    <HeaderStyle HorizontalAlign="Right" />
                                                    </asp:BoundField>
                                                </Columns>
                                                <FooterStyle BackColor="White" ForeColor="#333333" />
                                                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                                                <RowStyle BackColor="White" ForeColor="#333333" />
                                                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                                                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                                <SortedAscendingHeaderStyle BackColor="#487575" />
                                                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                                <SortedDescendingHeaderStyle BackColor="#275353" />
                                            </asp:GridView>
                                        </td>
                                        <td valign="top">
                                            <asp:GridView ID="GridViewBase" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="BaseID" DataSourceID="SqlDataSourceBase" GridLines="Horizontal" PageSize="4" Width="100%">
                                                <Columns>
                                                    <asp:BoundField DataField="BaseDate" HeaderText="تاریخ ارتقاء" SortExpression="BaseDate">
                                                    <HeaderStyle HorizontalAlign="Right" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="BaseGrade" HeaderText="رتبه اخذ شده" SortExpression="BaseGrade">
                                                    <HeaderStyle HorizontalAlign="Right" />
                                                    </asp:BoundField>
                                                </Columns>
                                                <FooterStyle BackColor="White" ForeColor="#333333" />
                                                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                                                <RowStyle BackColor="White" ForeColor="#333333" />
                                                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                                                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                                <SortedAscendingHeaderStyle BackColor="#487575" />
                                                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                                <SortedDescendingHeaderStyle BackColor="#275353" />
                                            </asp:GridView>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td bgcolor="#999999" align="right">
                                            <asp:Label ID="Label105" runat="server" CssClass="BigLabel" Font-Bold="True" Text="ارزشیابی"></asp:Label>
                                            <asp:SqlDataSource ID="SqlDataSourceValue" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:KSHDBConnectionString %>" DeleteCommand="DELETE FROM [Valuation] WHERE [ValuationID] = @original_ValuationID AND [PersonID] = @original_PersonID AND [Year] = @original_Year AND [Grade] = @original_Grade" InsertCommand="INSERT INTO [Valuation] ([PersonID], [Year], [Grade]) VALUES (@PersonID, @Year, @Grade)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT Top (4) * FROM [Valuation] WHERE ([PersonID] = @PersonID) ORDER BY Year DESC" UpdateCommand="UPDATE [Valuation] SET [PersonID] = @PersonID, [Year] = @Year, [Grade] = @Grade WHERE [ValuationID] = @original_ValuationID AND [PersonID] = @original_PersonID AND [Year] = @original_Year AND [Grade] = @original_Grade">
                                                <DeleteParameters>
                                                    <asp:Parameter Name="original_ValuationID" Type="Int32" />
                                                    <asp:Parameter Name="original_PersonID" Type="Int32" />
                                                    <asp:Parameter Name="original_Year" Type="String" />
                                                    <asp:Parameter Name="original_Grade" Type="String" />
                                                </DeleteParameters>
                                                <InsertParameters>
                                                    <asp:Parameter Name="PersonID" Type="Int32" />
                                                    <asp:Parameter Name="Year" Type="String" />
                                                    <asp:Parameter Name="Grade" Type="String" />
                                                </InsertParameters>
                                                <SelectParameters>
                                                    <asp:SessionParameter Name="PersonID" SessionField="PID" Type="Int32" />
                                                </SelectParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="PersonID" Type="Int32" />
                                                    <asp:Parameter Name="Year" Type="String" />
                                                    <asp:Parameter Name="Grade" Type="String" />
                                                    <asp:Parameter Name="original_ValuationID" Type="Int32" />
                                                    <asp:Parameter Name="original_PersonID" Type="Int32" />
                                                    <asp:Parameter Name="original_Year" Type="String" />
                                                    <asp:Parameter Name="original_Grade" Type="String" />
                                                </UpdateParameters>
                                            </asp:SqlDataSource>
                                        </td>
                                        <td bgcolor="#999999" align="right">
                                            <asp:Label ID="Label108" runat="server" CssClass="BigLabel" Font-Bold="True" Text="سابقه فرد"></asp:Label>
                                            <asp:SqlDataSource ID="SqlDataSourceSummary" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:KSHDBConnectionString %>" DeleteCommand="DELETE FROM [Summary] WHERE [SummaryID] = @original_SummaryID AND [PersonID] = @original_PersonID AND (([SDate] = @original_SDate) OR ([SDate] IS NULL AND @original_SDate IS NULL)) AND (([EDate] = @original_EDate) OR ([EDate] IS NULL AND @original_EDate IS NULL)) AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL))" InsertCommand="INSERT INTO [Summary] ([PersonID], [SDate], [EDate], [Title]) VALUES (@PersonID, @SDate, @EDate, @Title)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Summary] WHERE ([PersonID] = @PersonID)" UpdateCommand="UPDATE [Summary] SET [PersonID] = @PersonID, [SDate] = @SDate, [EDate] = @EDate, [Title] = @Title WHERE [SummaryID] = @original_SummaryID AND [PersonID] = @original_PersonID AND (([SDate] = @original_SDate) OR ([SDate] IS NULL AND @original_SDate IS NULL)) AND (([EDate] = @original_EDate) OR ([EDate] IS NULL AND @original_EDate IS NULL)) AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL))">
                                                <DeleteParameters>
                                                    <asp:Parameter Name="original_SummaryID" Type="Int32" />
                                                    <asp:Parameter Name="original_PersonID" Type="Int32" />
                                                    <asp:Parameter Name="original_SDate" Type="String" />
                                                    <asp:Parameter Name="original_EDate" Type="String" />
                                                    <asp:Parameter Name="original_Title" Type="String" />
                                                </DeleteParameters>
                                                <InsertParameters>
                                                    <asp:Parameter Name="PersonID" Type="Int32" />
                                                    <asp:Parameter Name="SDate" Type="String" />
                                                    <asp:Parameter Name="EDate" Type="String" />
                                                    <asp:Parameter Name="Title" Type="String" />
                                                </InsertParameters>
                                                <SelectParameters>
                                                    <asp:SessionParameter Name="PersonID" SessionField="PID" Type="Int32" />
                                                </SelectParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="PersonID" Type="Int32" />
                                                    <asp:Parameter Name="SDate" Type="String" />
                                                    <asp:Parameter Name="EDate" Type="String" />
                                                    <asp:Parameter Name="Title" Type="String" />
                                                    <asp:Parameter Name="original_SummaryID" Type="Int32" />
                                                    <asp:Parameter Name="original_PersonID" Type="Int32" />
                                                    <asp:Parameter Name="original_SDate" Type="String" />
                                                    <asp:Parameter Name="original_EDate" Type="String" />
                                                    <asp:Parameter Name="original_Title" Type="String" />
                                                </UpdateParameters>
                                            </asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td valign="top">
                                            <asp:GridView ID="GridViewValue" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="ValuationID" DataSourceID="SqlDataSourceValue" GridLines="Horizontal" PageSize="4" Width="100%">
                                                <Columns>
                                                    <asp:BoundField DataField="Year" HeaderText="سال" SortExpression="Year">
                                                    <HeaderStyle HorizontalAlign="Right" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="Grade" HeaderText="نمره ارزشیابی" SortExpression="Grade">
                                                    <HeaderStyle HorizontalAlign="Right" />
                                                    </asp:BoundField>
                                                </Columns>
                                                <FooterStyle BackColor="White" ForeColor="#333333" />
                                                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                                                <RowStyle BackColor="White" ForeColor="#333333" />
                                                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                                                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                                <SortedAscendingHeaderStyle BackColor="#487575" />
                                                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                                <SortedDescendingHeaderStyle BackColor="#275353" />
                                            </asp:GridView>
                                        </td>
                                        <td dir="rtl" valign="top">
                                            <asp:GridView ID="GridViewSummary0" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="SummaryID" DataSourceID="SqlDataSourceSummary" GridLines="Horizontal" PageSize="6" Width="100%">
                                                <Columns>
                                                    <asp:BoundField DataField="Title" HeaderText="عنوان" SortExpression="Title" />
                                                    <asp:BoundField DataField="SDate" HeaderText="تاریخ شروع" SortExpression="SDate">
                                                    <HeaderStyle HorizontalAlign="Right" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="EDate" HeaderText="تاریخ پایان" SortExpression="EDate">
                                                    <HeaderStyle HorizontalAlign="Right" />
                                                    </asp:BoundField>
                                                </Columns>
                                                <FooterStyle BackColor="White" ForeColor="#333333" />
                                                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                                                <RowStyle BackColor="White" ForeColor="#333333" />
                                                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                                                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                                <SortedAscendingHeaderStyle BackColor="#487575" />
                                                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                                <SortedDescendingHeaderStyle BackColor="#275353" />
                                            </asp:GridView>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td bgcolor="#999999" colspan="2">&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td colspan="3">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

