<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EditInfo.aspx.cs" Inherits="EditInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
    .auto-style3 {
        height: 23px;
    }
    .auto-style4 {
        height: 35px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" dir="rtl" class="Table90P">
        <tr>
            <td>
                <table align="center" class="auto-style1" dir="rtl">
                    <tr>
                        <td align="right">
                            <asp:ImageButton ID="imgInsert" runat="server" CssClass="PersonelImage" ImageUrl="~/Images/btnSabt.jpg" OnClick="imgInsert_Click" />
                                        &nbsp;&nbsp;
                                        <asp:ImageButton ID="imgbAccept" runat="server" CssClass="PersonelImage" ImageUrl="~/Images/AcceptExit.jpg" OnClick="imgbAccept_Click" />
                                        <asp:Label ID="Label103" runat="server" CssClass="greenLbl" Text="شماره" Visible="False"></asp:Label>
                                        <asp:Label ID="lblMsg" runat="server" CssClass="RedLbl" Visible="False"></asp:Label>
                                    </td>
                        <td>
                            <asp:Label ID="lblEdit" runat="server" CssClass="RedLbl"></asp:Label>
                        </td>
                        <td align="left">
                                        <asp:ImageButton ID="imgbHome" runat="server" Height="60px" ImageUrl="~/Images/Home2.png" Width="60px" OnClick="imgbHome_Click" />
                                        <asp:ImageButton ID="imgbExit" runat="server" ImageUrl="~/Images/exit2.JPG" OnClick="imgbExit_Click" />
                                    </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table align="right" class="auto-style1" dir="rtl" style="border: thin solid #808080">
                    <tr>
                        <td colspan="5" align="right">
                            <asp:Label ID="Label12" runat="server" CssClass="BigLabel" Text="فرم مشخصات کارکنان"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="Label1" runat="server" CssClass="greenLbl" Text="نام دستگاه"></asp:Label>
                        </td>
                        <td colspan="2" align="right">
                            <asp:Label ID="Label5" runat="server" CssClass="RedLbl" Text="قوه قضائیه -"></asp:Label>
                        &nbsp;<asp:Label ID="Label6" runat="server" CssClass="RedLbl" Text="مرکز شوراهای حل اختلاف"></asp:Label>
                        </td>
                        <td align="right">
                            &nbsp;</td>
                        <td rowspan="5" align="right">
                            <asp:Image ID="imgPerson" runat="server" CssClass="PersonelImage" ImageUrl="~/Images/Person.jpg" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="Label3" runat="server" CssClass="label" Text="نام"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtName" runat="server" CssClass="label" BackColor="#CBCBB1"></asp:TextBox>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label8" runat="server" CssClass="label" Text="شماره پرونده"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtCaseNumber" runat="server" BackColor="#CBCBB1"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="Label4" runat="server" CssClass="label" Text="نام خانوادگی"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtFamily" runat="server" CssClass="label" BackColor="#CBCBB1"></asp:TextBox>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label9" runat="server" CssClass="label" Text="شماره کارمندی"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtPersonelnumber" runat="server" BackColor="#CBCBB1"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="Label11" runat="server" CssClass="label" Text="ثبت عکس پرسنلی"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:FileUpload ID="fuImg" runat="server" BackColor="#CBCBB1" />
                        </td>
                        <td align="right">
                            <asp:Label ID="Label10" runat="server" CssClass="label" Text="کد ملی"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtMelliCode" runat="server" BackColor="#CBCBB1"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" align="right">
                            &nbsp;</td>
                        <td class="auto-style2" colspan="2" align="right">
                            <asp:Label ID="Label109" runat="server" CssClass="RedLbl" Text="لطفا عکس پرسنلی با پسوند JPG وارد شود"></asp:Label>
                        </td>
                        <td class="auto-style2" align="right">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2" align="right">
                            <asp:Label ID="Label2" runat="server" CssClass="greenLbl" Text="نام واحد"></asp:Label>
                        </td>
                        <td class="auto-style2" colspan="4" align="right">
                            <asp:TextBox ID="txtUnitName" runat="server" BackColor="#BDBD9D" ReadOnly="True" Width="230px" CssClass="label"></asp:TextBox>
                            <asp:DropDownList ID="ddlUnit" runat="server" CssClass="label" >
                            </asp:DropDownList>
                            <asp:Button ID="btnShowPosition" runat="server" CssClass="btn" Text="نمایش پست سازمانی" OnClick="btnShowPosition_Click" />
                            <asp:Button ID="btnEditPosition" runat="server" CssClass="btn" OnClick="btnEditPosition_Click" Text="ویرایش پست سازمانی" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" align="right">
                            <asp:Label ID="Label47" runat="server" CssClass="label" Text="پست سازمانی"></asp:Label>
                        </td>
                        <td class="auto-style2" colspan="4" align="right">
                            <asp:TextBox ID="txtPosition" runat="server" BackColor="#BDBD9D" ReadOnly="True" Width="230px" CssClass="label"></asp:TextBox>
                            <asp:DropDownList ID="ddlPosition" runat="server" CssClass="label">
                            </asp:DropDownList>
                            <asp:Button ID="btnShowPositionID" runat="server" CssClass="btn" Text="نمایش شماره پست سازمانی" OnClick="btnShowPositionID_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" align="right">
                            <asp:Label ID="Label48" runat="server" CssClass="label" Text="شماره پست سازمانی"></asp:Label>
                        </td>
                        <td class="auto-style2" colspan="2" align="right">
                            <asp:TextBox ID="txtPositionID" runat="server" BackColor="#BDBD9D" ReadOnly="True"></asp:TextBox>
                        </td>
                        <td class="auto-style2" colspan="2" align="right">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table align="right" class="auto-style1" dir="rtl" style="border: thin solid #808080">
                    <tr>
                        <td colspan="6" align="right">
                            <asp:Label ID="Label13" runat="server" CssClass="BigLabel" Text="اطلاعات شخصی و پرسنلی"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="Label14" runat="server" CssClass="label" Text="نام پدر"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtFatherName" runat="server" CssClass="label"></asp:TextBox>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label21" runat="server" CssClass="label" Text="تاریخ تولد"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtBirthDate" runat="server"></asp:TextBox>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label28" runat="server" CssClass="label" Text="وضعیت تاهل"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:DropDownList ID="ddlMaritalState" runat="server" CssClass="label">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem Value="مجرد">مجرد</asp:ListItem>
                                <asp:ListItem Value="متاهل">متاهل</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="Label15" runat="server" CssClass="label" Text="شماره شناسنامه"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtCertificateNumber" runat="server"></asp:TextBox>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label22" runat="server" CssClass="label" Text="استان محل تولد"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:DropDownList ID="ddlBirthProvince" runat="server" CssClass="label">
                            </asp:DropDownList>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label31" runat="server" CssClass="label" Text="تعداد فرزندان"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtChildren" runat="server" MaxLength="2" Width="16px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="Label16" runat="server" CssClass="label" Text="محل صدور"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtIssuePlace" runat="server" CssClass="label"></asp:TextBox>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label23" runat="server" CssClass="label" Text="شهر محل تولد"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtBirthCity" runat="server" CssClass="label"></asp:TextBox>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label33" runat="server" CssClass="label" Text="تلفن"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtTell" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="Label17" runat="server" CssClass="label" Text="جنسیت"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:DropDownList ID="ddlGender" runat="server" CssClass="label">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem Value="زن">زن</asp:ListItem>
                                <asp:ListItem Value="مرد">مرد</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label24" runat="server" CssClass="label" Text="بخش محل تولد"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtBirthZone" runat="server" CssClass="label"></asp:TextBox>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label18" runat="server" CssClass="label" Text="دین"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:DropDownList ID="ddlReligion" runat="server" CssClass="label">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem Value="مسلمان">مسلمان</asp:ListItem>
                                <asp:ListItem Value="زرتشتی">زرتشتی</asp:ListItem>
                                <asp:ListItem Value="مسیحی">مسیحی</asp:ListItem>
                                <asp:ListItem Value="کلیمی">کلیمی</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3" align="right">
                            <asp:Label ID="Label25" runat="server" CssClass="label" Text="وضعیت ایثارگری"></asp:Label>
                        </td>
                        <td class="auto-style3" align="right">
                            <asp:DropDownList ID="ddlRemissionState" runat="server" CssClass="label">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem Value="آزاده">آزاده</asp:ListItem>
                                <asp:ListItem Value="جانباز">جانباز</asp:ListItem>
                                <asp:ListItem Value="فرزند شهید">فرزند شهید</asp:ListItem>
                                <asp:ListItem Value="فرزند جانباز">فرزند جانباز</asp:ListItem>
                                <asp:ListItem Value="رزمنده">رزمنده</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style3" align="right">
                            <asp:Label ID="Label19" runat="server" CssClass="label" Text="وضعیت نظام وظیفه"></asp:Label>
                        </td>
                        <td class="auto-style3" align="right">
                            <asp:DropDownList ID="ddlMilitaryState" runat="server" CssClass="label">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem Value="زن-بی نیاز از خدمت">زن-بی نیاز از خدمت</asp:ListItem>
                                <asp:ListItem Value="انجام داده">انجام داده</asp:ListItem>
                                <asp:ListItem Value="مشمول">مشمول</asp:ListItem>
                                <asp:ListItem Value="معاف">معاف</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style3" align="right">
                            <asp:Label ID="Label26" runat="server" CssClass="label" Text="درصد جانبازی"></asp:Label>
                        </td>
                        <td class="auto-style3" align="right">
                            <asp:TextBox ID="txtEscapePersentage" runat="server" MaxLength="2" Width="16px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="Label20" runat="server" CssClass="label" Text="مدت نظام وظیفه"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtMilitaryYear" runat="server" MaxLength="2" Width="16px"></asp:TextBox>
                            <asp:Label ID="Label64" runat="server" CssClass="label" Text="سال"></asp:Label>
                            <asp:TextBox ID="txtMilitaryMonth" runat="server" MaxLength="2" Width="16px"></asp:TextBox>
                            <asp:Label ID="Label66" runat="server" CssClass="label" Text="ماه"></asp:Label>
                            <asp:TextBox ID="txtMilitaryDay" runat="server" MaxLength="2" Width="16px"></asp:TextBox>
                            <asp:Label ID="Label65" runat="server" CssClass="label" Text="روز"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label27" runat="server" CssClass="label" Text="مدت اسارت"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtCaptivityYear" runat="server" MaxLength="2" Width="16px"></asp:TextBox>
                            <asp:Label ID="Label67" runat="server" CssClass="label" Text="سال"></asp:Label>
                            <asp:TextBox ID="txtCaptivityMonth" runat="server" MaxLength="2" Width="16px"></asp:TextBox>
                            <asp:Label ID="Label69" runat="server" CssClass="label" Text="ماه"></asp:Label>
                            <asp:TextBox ID="txtCaptivityDay" runat="server" MaxLength="2" Width="16px"></asp:TextBox>
                            <asp:Label ID="Label68" runat="server" CssClass="label" Text="روز"></asp:Label>
                        </td>
                        <td align="right">
                            &nbsp;</td>
                        <td align="right">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" class="auto-style2">
                            <asp:Label ID="Label35" runat="server" CssClass="label" Text="آدرس"></asp:Label>
                        </td>
                        <td colspan="3" align="right" class="auto-style2">
                            <asp:TextBox ID="txtAddress" runat="server" Width="350px" CssClass="label"></asp:TextBox>
                        </td>
                        <td align="right" class="auto-style2">
                            &nbsp;</td>
                        <td align="right" class="auto-style2">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table align="center" class="auto-style1" dir="rtl" style="border: thin solid #808080">
                    <tr>
                        <td class="auto-style4" colspan="6" align="right">
                            <asp:Label ID="Label37" runat="server" CssClass="BigLabel" Text="اطلاعات شغلی و حقوقی"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="Label39" runat="server" CssClass="label" Text="طبقه"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtGroup" runat="server" MaxLength="2" Width="16px"></asp:TextBox>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label45" runat="server" CssClass="label" Text="رسته"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtClass" runat="server" CssClass="label"></asp:TextBox>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label38" runat="server" CssClass="label" Text="نوع استخدام"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:DropDownList ID="ddlEmploymentType" runat="server" CssClass="label" TabIndex="35">
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
                        <td align="right">
                            <asp:Label ID="Label40" runat="server" CssClass="label" Text="تعداد طبقه تشویقی"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtAbetGroup" runat="server" MaxLength="2" Width="16px"></asp:TextBox>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label46" runat="server" CssClass="label" Text="رشته شغلی"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtBranch" runat="server" CssClass="label"></asp:TextBox>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label52" runat="server" CssClass="label" Text="سابقه خدمت"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtStateYear" runat="server" MaxLength="2" Width="16px"></asp:TextBox>
                            <asp:Label ID="Label70" runat="server" CssClass="label" Text="سال"></asp:Label>
                            <asp:TextBox ID="txtStateMonth" runat="server" MaxLength="2" Width="16px"></asp:TextBox>
                            <asp:Label ID="Label82" runat="server" CssClass="label" Text="ماه"></asp:Label>
                            <asp:TextBox ID="txtStateDay" runat="server" MaxLength="2" Width="16px"></asp:TextBox>
                            <asp:Label ID="Label76" runat="server" CssClass="label" Text="روز"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="Label42" runat="server" CssClass="label" Text="تعداد طبقه ارفاقی"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtleniencyGroup" runat="server" MaxLength="2" Width="16px"></asp:TextBox>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label50" runat="server" CssClass="label" Text="تاریخ استخدام آزمایشی"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtTestDate" runat="server" MaxLength="10"></asp:TextBox>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label53" runat="server" CssClass="label" Text="سنوات تجربی"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtTentativeYear" runat="server" MaxLength="2" Width="16px"></asp:TextBox>
                            <asp:Label ID="Label71" runat="server" CssClass="label" Text="سال"></asp:Label>
                            <asp:TextBox ID="txtTentativeMonth" runat="server" MaxLength="2" Width="16px"></asp:TextBox>
                            <asp:Label ID="Label83" runat="server" CssClass="label" Text="ماه"></asp:Label>
                            <asp:TextBox ID="txtTentativeDay" runat="server" MaxLength="2" Width="16px"></asp:TextBox>
                            <asp:Label ID="Label77" runat="server" CssClass="label" Text="روز"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="Label41" runat="server" CssClass="label" Text="رتبه"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:DropDownList ID="ddlBase" runat="server" CssClass="label">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>مقدماتی</asp:ListItem>
                                <asp:ListItem>پایه</asp:ListItem>
                                <asp:ListItem>ارشد</asp:ListItem>
                                <asp:ListItem>خبره</asp:ListItem>
                                <asp:ListItem>عالی</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label51" runat="server" CssClass="label" Text="تاریخ استخدام قطعی"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtFullEMPDate" runat="server" MaxLength="10"></asp:TextBox>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label54" runat="server" CssClass="label" Text="مدت خدمت داوطلبانه در جبهه"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtApplicantYear" runat="server" MaxLength="2" Width="16px"></asp:TextBox>
                            <asp:Label ID="Label72" runat="server" CssClass="label" Text="سال"></asp:Label>
                            <asp:TextBox ID="txtApplicantMonth" runat="server" MaxLength="2" Width="16px"></asp:TextBox>
                            <asp:Label ID="Label84" runat="server" CssClass="label" Text="ماه"></asp:Label>
                            <asp:TextBox ID="txtApplicantDay" runat="server" MaxLength="2" Width="16px"></asp:TextBox>
                            <asp:Label ID="Label78" runat="server" CssClass="label" Text="روز"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            &nbsp;</td>
                        <td align="right">
                            &nbsp;</td>
                        <td align="right">
                            <asp:Label ID="Label49" runat="server" CssClass="label" Text="تاریخ ورود به خدمت دولتی"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtEntranceDate" runat="server" MaxLength="10"></asp:TextBox>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label55" runat="server" CssClass="label" Text="مدت خدمت غیر داوطلبانه در جبهه"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtUnApplicantYear" runat="server" MaxLength="2" Width="16px"></asp:TextBox>
                            <asp:Label ID="Label73" runat="server" CssClass="label" Text="سال"></asp:Label>
                            <asp:TextBox ID="txtUnApplicantMonth" runat="server" MaxLength="2" Width="16px"></asp:TextBox>
                            <asp:Label ID="Label85" runat="server" CssClass="label" Text="ماه"></asp:Label>
                            <asp:TextBox ID="txtUnApplicantDay" runat="server" MaxLength="2" Width="16px"></asp:TextBox>
                            <asp:Label ID="Label79" runat="server" CssClass="label" Text="روز"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            &nbsp;</td>
                        <td align="right">
                            &nbsp;</td>
                        <td align="right">
                            <asp:Label ID="Label59" runat="server" CssClass="label" Text="ذخیره مرخصی تا سال قبل"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtLastDay" runat="server" MaxLength="2" Width="16px"></asp:TextBox>
                            <asp:Label ID="Label62" runat="server" CssClass="label" Text="روز"></asp:Label>
                            <asp:TextBox ID="txtLastHoure" runat="server" MaxLength="2" Width="16px"></asp:TextBox>
                            <asp:Label ID="Label63" runat="server" CssClass="label" Text="ساعت"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label56" runat="server" CssClass="label" Text="مدت رزمندگی"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtWarYear" runat="server" MaxLength="2" Width="16px"></asp:TextBox>
                            <asp:Label ID="Label74" runat="server" CssClass="label" Text="سال"></asp:Label>
                            <asp:TextBox ID="txtWarMonth" runat="server" MaxLength="2" Width="16px"></asp:TextBox>
                            <asp:Label ID="Label86" runat="server" CssClass="label" Text="ماه"></asp:Label>
                            <asp:TextBox ID="txtWarDay" runat="server" MaxLength="2" Width="16px"></asp:TextBox>
                            <asp:Label ID="Label80" runat="server" CssClass="label" Text="روز"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            &nbsp;</td>
                        <td align="right">
                            &nbsp;</td>
                        <td align="right">
                            <asp:Label ID="Label58" runat="server" CssClass="label" Text="مرخصی مصرفی سال جاری"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtthisDay" runat="server" MaxLength="2" Width="16px"></asp:TextBox>
                            <asp:Label ID="Label60" runat="server" CssClass="label" Text="روز"></asp:Label>
                            <asp:TextBox ID="txtThisHoure" runat="server" MaxLength="2" Width="16px"></asp:TextBox>
                            <asp:Label ID="Label61" runat="server" CssClass="label" Text="ساعت"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label57" runat="server" CssClass="label" Text="مدت خدمت در مناطق جنگی"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtWarPlaceYear" runat="server" MaxLength="2" Width="16px"></asp:TextBox>
                            <asp:Label ID="Label75" runat="server" CssClass="label" Text="سال"></asp:Label>
                            <asp:TextBox ID="txtWarPlaceMonth" runat="server" MaxLength="2" Width="16px"></asp:TextBox>
                            <asp:Label ID="Label87" runat="server" CssClass="label" Text="ماه"></asp:Label>
                            <asp:TextBox ID="txtWarPlaceDay" runat="server" MaxLength="2" Width="16px"></asp:TextBox>
                            <asp:Label ID="Label81" runat="server" CssClass="label" Text="روز"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table align="right" class="auto-style1" dir="rtl">
                    <tr>
                        <td colspan="2" align="right">
                            <asp:Label ID="Label104" runat="server" CssClass="BigLabel" Text="مدارک تحصیلی"></asp:Label>
                            <asp:SqlDataSource ID="SqlDataSourceField" runat="server" ConnectionString="<%$ ConnectionStrings:KSHDBConnectionString %>" SelectCommand="SELECT * FROM [PersonField] WHERE ([PersonID] = @PersonID)" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [PersonField] WHERE [PersonFieldID] = @original_PersonFieldID AND [PersonID] = @original_PersonID AND [FieldName] = @original_FieldName AND (([UniversityName] = @original_UniversityName) OR ([UniversityName] IS NULL AND @original_UniversityName IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([Degree] = @original_Degree) OR ([Degree] IS NULL AND @original_Degree IS NULL))" InsertCommand="INSERT INTO [PersonField] ([PersonID], [FieldName], [UniversityName], [Date], [Degree]) VALUES (@PersonID, @FieldName, @UniversityName, @Date, @Degree)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [PersonField] SET [PersonID] = @PersonID, [FieldName] = @FieldName, [UniversityName] = @UniversityName, [Date] = @Date, [Degree] = @Degree WHERE [PersonFieldID] = @original_PersonFieldID AND [PersonID] = @original_PersonID AND [FieldName] = @original_FieldName AND (([UniversityName] = @original_UniversityName) OR ([UniversityName] IS NULL AND @original_UniversityName IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([Degree] = @original_Degree) OR ([Degree] IS NULL AND @original_Degree IS NULL))">
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
                            <asp:GridView ID="GridView1" width="100%" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" CssClass="label" DataKeyNames="PersonFieldID" DataSourceID="SqlDataSourceField" GridLines="Horizontal" PageSize="5" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px">
                                <Columns>
                                    <asp:CommandField CancelText="انصراف" DeleteText="حذف" EditText="ویرایش" ShowDeleteButton="True" ShowEditButton="True" UpdateText="تایید" />
                                    <asp:BoundField DataField="PersonID" HeaderText="شماره" SortExpression="PersonID" />
                                    <asp:BoundField DataField="FieldName" HeaderText="مدرک تحصیلی" SortExpression="FieldName" />
                                    <asp:BoundField DataField="Degree" HeaderText="رشته تحصیلی" SortExpression="Degree" />
                                    <asp:BoundField DataField="Date" HeaderText="تاریخ اخذ مدرک" SortExpression="Date" />
                                    <asp:BoundField DataField="UniversityName" HeaderText="دانشگاه/موسسه محل تحصیل" SortExpression="UniversityName" />
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
                        <td align="right">
                            <asp:Label ID="Label106" runat="server" CssClass="BigLabel" Text="طبقه"></asp:Label>
                            <asp:SqlDataSource ID="SqlDataSourceGroup" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:KSHDBConnectionString %>" DeleteCommand="DELETE FROM [Groupe] WHERE [GroupID] = @original_GroupID AND [PersonID] = @original_PersonID AND [ClassDate] = @original_ClassDate AND [ClassGrade] = @original_ClassGrade" InsertCommand="INSERT INTO [Groupe] ([PersonID], [ClassDate], [ClassGrade]) VALUES (@PersonID, @ClassDate, @ClassGrade)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Groupe] WHERE ([PersonID] = @PersonID) ORDER BY ClassGrade" UpdateCommand="UPDATE [Groupe] SET [PersonID] = @PersonID, [ClassDate] = @ClassDate, [ClassGrade] = @ClassGrade WHERE [GroupID] = @original_GroupID AND [PersonID] = @original_PersonID AND [ClassDate] = @original_ClassDate AND [ClassGrade] = @original_ClassGrade">
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
                        <td align="right">
                            <asp:Label ID="Label107" runat="server" CssClass="BigLabel" Text="رتبه"></asp:Label>
                            <asp:SqlDataSource ID="SqlDataSourceBase" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:KSHDBConnectionString %>" DeleteCommand="DELETE FROM [Base] WHERE [BaseID] = @original_BaseID AND [PersonID] = @original_PersonID AND [BaseDate] = @original_BaseDate AND [BaseGrade] = @original_BaseGrade" InsertCommand="INSERT INTO [Base] ([PersonID], [BaseDate], [BaseGrade]) VALUES (@PersonID, @BaseDate, @BaseGrade)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Base] WHERE ([PersonID] = @PersonID)" UpdateCommand="UPDATE [Base] SET [PersonID] = @PersonID, [BaseDate] = @BaseDate, [BaseGrade] = @BaseGrade WHERE [BaseID] = @original_BaseID AND [PersonID] = @original_PersonID AND [BaseDate] = @original_BaseDate AND [BaseGrade] = @original_BaseGrade">
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
                            <asp:GridView ID="GridViewGroup" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="GroupID" DataSourceID="SqlDataSourceGroup" GridLines="Horizontal" PageSize="5" CssClass="label" Width="100%" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px">
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" CancelText="انصراف" DeleteText="حذف" EditText="ویرایش" UpdateText="تایید" />
                                    <asp:BoundField DataField="PersonID" HeaderText="شماره" SortExpression="PersonID" />
                                    <asp:BoundField DataField="ClassDate" HeaderText="تاریخ ارتقاء" SortExpression="ClassDate" />
                                    <asp:BoundField DataField="ClassGrade" HeaderText="طبقه اخذ شده" SortExpression="ClassGrade" />
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
                            <asp:GridView ID="GridViewBase" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="BaseID" DataSourceID="SqlDataSourceBase" PageSize="5" CssClass="label" Width="100%" GridLines="Horizontal">
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" CancelText="انصراف" DeleteText="حذف" EditText="ویرایش" UpdateText="تایید" />
                                    <asp:BoundField DataField="PersonID" HeaderText="شماره" SortExpression="PersonID" />
                                    <asp:BoundField DataField="BaseDate" HeaderText="تاریخ ارتقاء" SortExpression="BaseDate" />
                                    <asp:BoundField DataField="BaseGrade" HeaderText="رتبه اخذ شده" SortExpression="BaseGrade" />
                                </Columns>
                                <FooterStyle BackColor="White" ForeColor="#333333" />
                                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle ForeColor="#333333" BackColor="White" />
                                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                <SortedAscendingHeaderStyle BackColor="#487575" />
                                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                <SortedDescendingHeaderStyle BackColor="#275353" />
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="Label105" runat="server" CssClass="BigLabel" Text="ارزشیابی"></asp:Label>
                            <asp:SqlDataSource ID="SqlDataSourceValue" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:KSHDBConnectionString %>" DeleteCommand="DELETE FROM [Valuation] WHERE [ValuationID] = @original_ValuationID AND [PersonID] = @original_PersonID AND [Year] = @original_Year AND [Grade] = @original_Grade" InsertCommand="INSERT INTO [Valuation] ([PersonID], [Year], [Grade]) VALUES (@PersonID, @Year, @Grade)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Valuation] WHERE ([PersonID] = @PersonID) ORDER BY Year ASC" UpdateCommand="UPDATE [Valuation] SET [PersonID] = @PersonID, [Year] = @Year, [Grade] = @Grade WHERE [ValuationID] = @original_ValuationID AND [PersonID] = @original_PersonID AND [Year] = @original_Year AND [Grade] = @original_Grade">
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
                        <td align="right">
                            <asp:Label ID="Label108" runat="server" CssClass="BigLabel" Text="سابقه فرد"></asp:Label>
                            <asp:SqlDataSource ID="SqlDataSourceSummary" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:KSHDBConnectionString %>" DeleteCommand="DELETE FROM [Summary] WHERE [SummaryID] = @original_SummaryID AND [PersonID] = @original_PersonID AND (([SDate] = @original_SDate) OR ([SDate] IS NULL AND @original_SDate IS NULL)) AND (([EDate] = @original_EDate) OR ([EDate] IS NULL AND @original_EDate IS NULL)) AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL))" InsertCommand="INSERT INTO [Summary] ([PersonID], [SDate], [EDate], [Title]) VALUES (@PersonID, @SDate, @EDate, @Title)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Summary] WHERE ([PersonID] = @PersonID)" UpdateCommand="UPDATE [Summary] SET [PersonID] = @PersonID, [SDate] = @SDate, [EDate] = @EDate, [Title] = @Title WHERE [SummaryID] = @original_SummaryID AND [PersonID] = @original_PersonID AND (([SDate] = @original_SDate) OR ([SDate] IS NULL AND @original_SDate IS NULL)) AND (([EDate] = @original_EDate) OR ([EDate] IS NULL AND @original_EDate IS NULL)) AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL))" >
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
                            <asp:GridView ID="GridViewValue" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ValuationID" DataSourceID="SqlDataSourceValue" GridLines="Horizontal" CssClass="label" PageSize="5" Width="100%" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px">
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" CancelText="انصراف" DeleteText="حذف" EditText="ویرایش" UpdateText="تایید" />
                                    <asp:BoundField DataField="PersonID" HeaderText="شماره" SortExpression="PersonID" />
                                    <asp:BoundField DataField="Year" HeaderText="سال" SortExpression="Year" />
                                    <asp:BoundField DataField="Grade" HeaderText="نمره ارزشیابی" SortExpression="Grade" />
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
                            <asp:GridView ID="GridViewSummary" Width="100%" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="SummaryID" DataSourceID="SqlDataSourceSummary" GridLines="Horizontal" PageSize="5" CssClass="label" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px">
                                <Columns>
                                    <asp:CommandField CancelText="انصراف" DeleteText="حذف" EditText="ویرایش" ShowDeleteButton="True" ShowEditButton="True" UpdateText="تایید" />
                                    <asp:BoundField DataField="PersonID" HeaderText="شماره" SortExpression="PersonID" />
                                    <asp:BoundField DataField="Title" HeaderText="عنوان" SortExpression="Title" />
                                    <asp:BoundField DataField="SDate" HeaderText="تاریخ شروع" SortExpression="SDate" />
                                    <asp:BoundField DataField="EDate" HeaderText="تاریخ پایان" SortExpression="EDate" />
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
                        <td colspan="2">
                <table align="center" class="auto-style1" dir="rtl">
                    <tr>
                        <td colspan="7" align="right">
                            <asp:Label ID="Label101" runat="server" CssClass="BigLabel" Text="سایر اطلاعات"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="Label88" runat="server" CssClass="label" Text="مدرک تحصیلی"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:DropDownList ID="ddlDegree" runat="server" Text='<%# Bind("Degree") %>' CssClass="label">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>سیکل/راهنمایی</asp:ListItem>
                                <asp:ListItem>دیپلم</asp:ListItem>
                                <asp:ListItem>فوق دیپلم</asp:ListItem>
                                <asp:ListItem>لیسانس</asp:ListItem>
                                <asp:ListItem>فوق لیسانس</asp:ListItem>
                                <asp:ListItem>دکترا</asp:ListItem>
                                <asp:ListItem>فوق دکترا</asp:ListItem>
                                <asp:ListItem>سایر</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td align="right" colspan="2">
                            <asp:Label ID="Label89" runat="server" CssClass="label" Text="تاریخ اخذ مدرک"></asp:Label>
                        </td>
                        <td align="right" colspan="3">
                            <asp:TextBox ID="txtFieldDate" runat="server" Width="100px">-</asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="Label90" runat="server" CssClass="label" Text="رشته تحصیلی"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtField" runat="server"></asp:TextBox>
                        </td>
                        <td align="right" colspan="2">
                            <asp:Label ID="Label91" runat="server" CssClass="label" Text="دانشگاه/موسسه محل تحصیل"></asp:Label>
                        </td>
                        <td align="right" colspan="3">
                            <asp:TextBox ID="txtUniversity" runat="server" Width="300px">-</asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="Label92" runat="server" CssClass="label" Text="نمره ارزشیابی"></asp:Label>
                        </td>
                        <td align="right" colspan="2">
                            <asp:TextBox ID="txtValuationGrade" runat="server" Width="16px"></asp:TextBox>
                        &nbsp;<asp:Label ID="Label93" runat="server" CssClass="label" Text="سال"></asp:Label>
                        &nbsp;<asp:TextBox ID="txtValuationYear" runat="server" Width="16px"></asp:TextBox>
                        </td>
                        <td align="right" colspan="2">
                            &nbsp;</td>
                        <td align="right" colspan="2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right">
                                        <asp:Label ID="Label94" runat="server" CssClass="label" Text="طبقه/طبقه تشویقی اخذ شده"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtClassGrade" runat="server" Width="16px"></asp:TextBox>
                        </td>
                        <td align="right" colspan="5">
                                        <asp:Label ID="Label95" runat="server" CssClass="label" Text="تاریخ ارتقاء طبقه/سال اخذ طبقه تشویقی"></asp:Label>
                                    &nbsp;<asp:TextBox ID="txtClassdate" runat="server" Width="100px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="Label96" runat="server" CssClass="label" Text="رتبه اخذ شده"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:DropDownList ID="ddlBase0" runat="server" CssClass="label">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>مقدماتی</asp:ListItem>
                                <asp:ListItem>پایه</asp:ListItem>
                                <asp:ListItem>ارشد</asp:ListItem>
                                <asp:ListItem>خبره</asp:ListItem>
                                <asp:ListItem>عالی</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td align="right" colspan="2">
                                        <asp:Label ID="Label110" runat="server" CssClass="label" Text="تاریخ ارتقاء رتبه اخذ شده"></asp:Label>
                        </td>
                        <td align="right" colspan="3">
                            <asp:TextBox ID="txtBasedate" runat="server" Width="100px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="Label98" runat="server" CssClass="label" Text="عنوان سابقه"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:DropDownList ID="ddlTitle" runat="server" CssClass="label" SelectedValue='<%# Bind("Title") %>'>
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>تاریخ ماموریت به سایر سازمان ها</asp:ListItem>
                                <asp:ListItem>تاریخ مرخصی استعلاجی</asp:ListItem>
                                <asp:ListItem>تاریخ اشتغال نیمه وقت</asp:ListItem>
                                <asp:ListItem>تاریخ مرخصی بدون حقوق</asp:ListItem>
                                <asp:ListItem>تاریخ مرخصی زایمان</asp:ListItem>
                                <asp:ListItem>تاریخ شیردهی</asp:ListItem>
                                <asp:ListItem>تاریخ انتصاب جدید</asp:ListItem>
                                <asp:ListItem>تاریخ استخدام پیمانی</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td align="right" colspan="2">
                            <asp:Label ID="Label99" runat="server" CssClass="label" Text="تاریخ شروع"></asp:Label>
                            <asp:TextBox ID="txtSDate" runat="server" Text='<%# Bind("SDate") %>' Width="100px" />
                        </td>
                        <td align="left" colspan="2">
                            <asp:Label ID="Label100" runat="server" CssClass="label" Text="تاریخ پایان"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtEDate" runat="server" Text='-' Width="100px" />
                        </td>
                    </tr>
                    </table>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

