<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PersonalInfo.aspx.cs" Inherits="PersonalInfo" %>

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
        .auto-style5 {
            height: 25px;
        }
        .auto-style6 {
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" dir="rtl" class="Table90P">
        <tr>
            <td>
                <table align="center" class="auto-style1" dir="rtl">
                    <tr>
                        <td colspan="4">
                            <table align="center" class="auto-style1" dir="rtl">
                                <tr>
                                    <td align="right">
                            <asp:ImageButton ID="imgInsert" runat="server" CssClass="PersonelImage" ImageUrl="~/Images/btnSabt.jpg" OnClick="imgInsert_Click" ValidationGroup="A" TabIndex="79" />
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                    <td align="left">
                <asp:ImageButton ID="imgbHome" runat="server" Height="60px" ImageUrl="~/Images/Home2.png" Width="60px" OnClick="imgbHome_Click" TabIndex="81" />
                <asp:ImageButton ID="imgbExit" runat="server" ImageUrl="~/Images/exit2.JPG" OnClick="imgbExit_Click" TabIndex="80" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4" align="right">
                            <asp:Label ID="Label12" runat="server" CssClass="BigLabel" Text="فرم مشخصات کارکنان"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="Label1" runat="server" CssClass="greenLbl" Text="نام دستگاه"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label5" runat="server" CssClass="RedLbl" Text="قوه قضائیه -"></asp:Label>
                        &nbsp;<asp:Label ID="Label6" runat="server" CssClass="RedLbl" Text="مرکز شوراهای حل اختلاف"></asp:Label>
                        </td>
                        <td align="right">
                            &nbsp;</td>
                        <td align="right">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="Label2" runat="server" CssClass="greenLbl" Text="نام واحد"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:DropDownList ID="ddlUnit" runat="server" CssClass="label" >
                            </asp:DropDownList>
                            <asp:Button ID="btnShowPosition" runat="server" CssClass="btn" OnClick="btnShowPosition_Click" Text="نمایش پست سازمانی" />
                        </td>
                        <td align="right">
                            <asp:Label ID="Label8" runat="server" CssClass="label" Text="شماره پرونده"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtCaseNumber" runat="server" ValidationGroup="A" TabIndex="2" BackColor="#CBCBB1"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCaseNumber" ErrorMessage="*" ForeColor="#993333" ValidationGroup="A"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="Label47" runat="server" CssClass="label" Text="پست سازمانی"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:DropDownList ID="ddlPosition" runat="server" CssClass="label">
                            </asp:DropDownList>
                            <asp:Button ID="btnShowPositionID" runat="server" CssClass="btn" Text="نمایش شماره پست سازمانی" OnClick="btnShowPositionID_Click" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddlPosition" ErrorMessage="*" ForeColor="#993333" ValidationGroup="A"></asp:RequiredFieldValidator>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label9" runat="server" CssClass="label" Text="شماره کارمندی"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtPersonelnumber" runat="server" ValidationGroup="A" TabIndex="3" BackColor="#CBCBB1"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPersonelnumber" ErrorMessage="*" ForeColor="#993333" ValidationGroup="A"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="Label48" runat="server" CssClass="label" Text="شماره پست سازمانی"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtPositionID" runat="server" BackColor="#BDBD9D" ReadOnly="True"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtPositionID" ErrorMessage="*" ForeColor="#993333" ValidationGroup="A"></asp:RequiredFieldValidator>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label10" runat="server" CssClass="label" Text="کد ملی"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtMelliCode" runat="server" ValidationGroup="A" TabIndex="4" BackColor="#CBCBB1"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtMelliCode" ErrorMessage="*" ForeColor="#993333" ValidationGroup="A"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" align="right">
                            <asp:Label ID="Label3" runat="server" CssClass="label" Text="نام"></asp:Label>
                        </td>
                        <td class="auto-style2" align="right">
                            <asp:TextBox ID="txtName" runat="server" ValidationGroup="A" TabIndex="1" BackColor="#CBCBB1"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="*" ForeColor="#993333" ValidationGroup="A"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style2" align="right">
                            <asp:Label ID="Label11" runat="server" CssClass="label" Text="ثبت عکس پرسنلی"></asp:Label>
                        </td>
                        <td class="auto-style2" align="right">
                            <asp:FileUpload ID="fuImg" runat="server" TabIndex="5" BackColor="#CBCBB1" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" align="right">
                            <asp:Label ID="Label4" runat="server" CssClass="label" Text="نام خانوادگی"></asp:Label>
                        </td>
                        <td class="auto-style2" align="right">
                            <asp:TextBox ID="txtFamily" runat="server" ValidationGroup="A" TabIndex="1" BackColor="#CBCBB1"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFamily" ErrorMessage="*" ForeColor="#993333" ValidationGroup="A"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style2" align="right">
                            </td>
                        <td class="auto-style2" align="right">
                            <asp:Label ID="Label109" runat="server" CssClass="RedLbl" Text="لطفا عکس پرسنلی با پسوند JPG وارد شود"></asp:Label>
                            </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table align="center" class="auto-style1" dir="rtl">
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
                            <asp:TextBox ID="txtFatherName" runat="server" TabIndex="6"></asp:TextBox>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label21" runat="server" CssClass="label" Text="تاریخ تولد"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtBirthDate" runat="server" MaxLength="10" TabIndex="7"></asp:TextBox>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label28" runat="server" CssClass="label" Text="وضعیت تاهل"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:DropDownList ID="ddlMaritalState" runat="server" CssClass="label" TabIndex="8">
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
                            <asp:TextBox ID="txtCertificateNumber" runat="server" TabIndex="9"></asp:TextBox>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label22" runat="server" CssClass="label" Text="استان محل تولد"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:DropDownList ID="ddlBirthProvince" runat="server" CssClass="label" TabIndex="10">
                            </asp:DropDownList>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label31" runat="server" CssClass="label" Text="تعداد فرزندان"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtChildren" runat="server" MaxLength="2" Width="16px" TabIndex="11"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="Label16" runat="server" CssClass="label" Text="محل صدور"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtIssuePlace" runat="server" TabIndex="12"></asp:TextBox>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label23" runat="server" CssClass="label" Text="شهر محل تولد"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtBirthCity" runat="server" TabIndex="13"></asp:TextBox>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label33" runat="server" CssClass="label" Text="تلفن"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtTell" runat="server" TabIndex="14"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="Label17" runat="server" CssClass="label" Text="جنسیت"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:DropDownList ID="ddlGender" runat="server" CssClass="label" TabIndex="15">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem Value="زن">زن</asp:ListItem>
                                <asp:ListItem Value="مرد">مرد</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label24" runat="server" CssClass="label" Text="بخش محل تولد"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtBirthZone" runat="server" TabIndex="16"></asp:TextBox>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label18" runat="server" CssClass="label" Text="دین"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:DropDownList ID="ddlReligion" runat="server" CssClass="label" TabIndex="18">
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
                            <asp:DropDownList ID="ddlRemissionState" runat="server" CssClass="label" TabIndex="19">
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
                            <asp:DropDownList ID="ddlMilitaryState" runat="server" CssClass="label" TabIndex="21">
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
                            <asp:TextBox ID="txtEscapePersentage" runat="server" MaxLength="2" Width="16px" TabIndex="22"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="Label20" runat="server" CssClass="label" Text="مدت نظام وظیفه"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtMilitaryYear" runat="server" MaxLength="2" Width="16px" TabIndex="24"></asp:TextBox>
                            <asp:Label ID="Label64" runat="server" CssClass="label" Text="سال"></asp:Label>
                            <asp:TextBox ID="txtMilitaryMonth" runat="server" MaxLength="2" Width="16px" TabIndex="25"></asp:TextBox>
                            <asp:Label ID="Label66" runat="server" CssClass="label" Text="ماه"></asp:Label>
                            <asp:TextBox ID="txtMilitaryDay" runat="server" MaxLength="2" Width="16px" TabIndex="26"></asp:TextBox>
                            <asp:Label ID="Label65" runat="server" CssClass="label" Text="روز"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label27" runat="server" CssClass="label" Text="مدت اسارت"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtCaptivityYear" runat="server" MaxLength="2" Width="16px" TabIndex="27"></asp:TextBox>
                            <asp:Label ID="Label67" runat="server" CssClass="label" Text="سال"></asp:Label>
                            <asp:TextBox ID="txtCaptivityMonth" runat="server" MaxLength="2" Width="16px" TabIndex="28"></asp:TextBox>
                            <asp:Label ID="Label69" runat="server" CssClass="label" Text="ماه"></asp:Label>
                            <asp:TextBox ID="txtCaptivityDay" runat="server" MaxLength="2" Width="16px" TabIndex="29"></asp:TextBox>
                            <asp:Label ID="Label68" runat="server" CssClass="label" Text="روز"></asp:Label>
                        </td>
                        <td align="right">
                            &nbsp;</td>
                        <td align="right">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="Label35" runat="server" CssClass="label" Text="آدرس"></asp:Label>
                        </td>
                        <td colspan="3" align="right">
                            <asp:TextBox ID="txtAddress" runat="server" Width="350px" TabIndex="31"></asp:TextBox>
                        </td>
                        <td align="right">
                            &nbsp;</td>
                        <td align="right">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table align="center" class="auto-style1" dir="rtl">
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
                            <asp:TextBox ID="txtGroup" runat="server" MaxLength="2" Width="16px" TabIndex="33"></asp:TextBox>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label45" runat="server" CssClass="label" Text="رسته"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtClass" runat="server" TabIndex="34"></asp:TextBox>
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
                            <asp:TextBox ID="txtAbetGroup" runat="server" MaxLength="2" Width="16px" TabIndex="36"></asp:TextBox>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label46" runat="server" CssClass="label" Text="رشته شغلی"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtBranch" runat="server" TabIndex="37"></asp:TextBox>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label52" runat="server" CssClass="label" Text="سابقه خدمت"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtStateYear" runat="server" MaxLength="2" Width="16px" TabIndex="38"></asp:TextBox>
                            <asp:Label ID="Label70" runat="server" CssClass="label" Text="سال"></asp:Label>
                            <asp:TextBox ID="txtStateMonth" runat="server" MaxLength="2" Width="16px" TabIndex="39"></asp:TextBox>
                            <asp:Label ID="Label82" runat="server" CssClass="label" Text="ماه"></asp:Label>
                            <asp:TextBox ID="txtStateDay" runat="server" MaxLength="2" Width="16px" TabIndex="40"></asp:TextBox>
                            <asp:Label ID="Label76" runat="server" CssClass="label" Text="روز"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="Label42" runat="server" CssClass="label" Text="تعداد طبقه ارفاقی"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtleniencyGroup" runat="server" MaxLength="2" Width="16px" TabIndex="41"></asp:TextBox>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label50" runat="server" CssClass="label" Text="تاریخ استخدام آزمایشی"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtTestDate" runat="server" MaxLength="10" TabIndex="42"></asp:TextBox>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label53" runat="server" CssClass="label" Text="سنوات تجربی"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtTentativeYear" runat="server" MaxLength="2" Width="16px" TabIndex="43"></asp:TextBox>
                            <asp:Label ID="Label71" runat="server" CssClass="label" Text="سال"></asp:Label>
                            <asp:TextBox ID="txtTentativeMonth" runat="server" MaxLength="2" Width="16px" TabIndex="44"></asp:TextBox>
                            <asp:Label ID="Label83" runat="server" CssClass="label" Text="ماه"></asp:Label>
                            <asp:TextBox ID="txtTentativeDay" runat="server" MaxLength="2" Width="16px" TabIndex="45"></asp:TextBox>
                            <asp:Label ID="Label77" runat="server" CssClass="label" Text="روز"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="Label41" runat="server" CssClass="label" Text="رتبه"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:DropDownList ID="ddlBase" runat="server" CssClass="label" TabIndex="46">
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
                            <asp:TextBox ID="txtFullEMPDate" runat="server" MaxLength="10" TabIndex="47"></asp:TextBox>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label54" runat="server" CssClass="label" Text="مدت خدمت داوطلبانه در جبهه"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtApplicantYear" runat="server" MaxLength="2" Width="16px" TabIndex="48"></asp:TextBox>
                            <asp:Label ID="Label72" runat="server" CssClass="label" Text="سال"></asp:Label>
                            <asp:TextBox ID="txtApplicantMonth" runat="server" MaxLength="2" Width="16px" TabIndex="49"></asp:TextBox>
                            <asp:Label ID="Label84" runat="server" CssClass="label" Text="ماه"></asp:Label>
                            <asp:TextBox ID="txtApplicantDay" runat="server" MaxLength="2" Width="16px" TabIndex="50"></asp:TextBox>
                            <asp:Label ID="Label78" runat="server" CssClass="label" Text="روز"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="auto-style6">
                            </td>
                        <td align="right" class="auto-style6">
                            </td>
                        <td align="right" class="auto-style6">
                            <asp:Label ID="Label49" runat="server" CssClass="label" Text="تاریخ ورود به خدمت دولتی"></asp:Label>
                        </td>
                        <td align="right" class="auto-style6">
                            <asp:TextBox ID="txtEntranceDate" runat="server" MaxLength="10" TabIndex="52"></asp:TextBox>
                        </td>
                        <td align="right" class="auto-style6">
                            <asp:Label ID="Label55" runat="server" CssClass="label" Text="مدت خدمت غیر داوطلبانه در جبهه"></asp:Label>
                        </td>
                        <td align="right" class="auto-style6">
                            <asp:TextBox ID="txtUnApplicantYear" runat="server" MaxLength="2" Width="16px" TabIndex="53"></asp:TextBox>
                            <asp:Label ID="Label73" runat="server" CssClass="label" Text="سال"></asp:Label>
                            <asp:TextBox ID="txtUnApplicantMonth" runat="server" MaxLength="2" Width="16px" TabIndex="54"></asp:TextBox>
                            <asp:Label ID="Label85" runat="server" CssClass="label" Text="ماه"></asp:Label>
                            <asp:TextBox ID="txtUnApplicantDay" runat="server" MaxLength="2" Width="16px" TabIndex="55"></asp:TextBox>
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
                            <asp:TextBox ID="txtLastDay" runat="server" MaxLength="2" Width="16px" TabIndex="56"></asp:TextBox>
                            <asp:Label ID="Label62" runat="server" CssClass="label" Text="روز"></asp:Label>
                            <asp:TextBox ID="txtLastHoure" runat="server" MaxLength="2" Width="16px" TabIndex="57"></asp:TextBox>
                            <asp:Label ID="Label63" runat="server" CssClass="label" Text="ساعت"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label56" runat="server" CssClass="label" Text="مدت رزمندگی"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtWarYear" runat="server" MaxLength="2" Width="16px" TabIndex="58"></asp:TextBox>
                            <asp:Label ID="Label74" runat="server" CssClass="label" Text="سال"></asp:Label>
                            <asp:TextBox ID="txtWarMonth" runat="server" MaxLength="2" Width="16px" TabIndex="59"></asp:TextBox>
                            <asp:Label ID="Label86" runat="server" CssClass="label" Text="ماه"></asp:Label>
                            <asp:TextBox ID="txtWarDay" runat="server" MaxLength="2" Width="16px" TabIndex="60"></asp:TextBox>
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
                            <asp:TextBox ID="txtthisDay" runat="server" MaxLength="2" Width="16px" TabIndex="61"></asp:TextBox>
                            <asp:Label ID="Label60" runat="server" CssClass="label" Text="روز"></asp:Label>
                            <asp:TextBox ID="txtThisHoure" runat="server" MaxLength="2" Width="16px" TabIndex="62"></asp:TextBox>
                            <asp:Label ID="Label61" runat="server" CssClass="label" Text="ساعت"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label57" runat="server" CssClass="label" Text="مدت خدمت در مناطق جنگی"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtWarPlaceYear" runat="server" MaxLength="2" Width="16px" TabIndex="63"></asp:TextBox>
                            <asp:Label ID="Label75" runat="server" CssClass="label" Text="سال"></asp:Label>
                            <asp:TextBox ID="txtWarPlaceMonth" runat="server" MaxLength="2" Width="16px" TabIndex="64"></asp:TextBox>
                            <asp:Label ID="Label87" runat="server" CssClass="label" Text="ماه"></asp:Label>
                            <asp:TextBox ID="txtWarPlaceDay" runat="server" MaxLength="2" Width="16px" TabIndex="65"></asp:TextBox>
                            <asp:Label ID="Label81" runat="server" CssClass="label" Text="روز"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table align="center" class="auto-style1" dir="rtl">
                    <tr>
                        <td>
                            <table align="center" class="auto-style1" dir="rtl">
                                <tr>
                                    <td colspan="6" align="right">
                                        <asp:Label ID="Label101" runat="server" CssClass="BigLabel" Text="سایر اطلاعات"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="Label88" runat="server" CssClass="label" Text="مدرک تحصیلی"></asp:Label>
                                    </td>
                                    <td align="right">
                                        <asp:DropDownList ID="ddlDegree" runat="server" Text='<%# Bind("Degree") %>' CssClass="label" TabIndex="66">
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
                                    <td align="right" colspan="2">
                                        <asp:TextBox ID="txtFieldDate" runat="server" TabIndex="67" Width="100px">-</asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="Label90" runat="server" CssClass="label" Text="رشته تحصیلی"></asp:Label>
                                    </td>
                                    <td align="right">
                                        <asp:TextBox ID="txtField" runat="server" TabIndex="68"></asp:TextBox>
                                    </td>
                                    <td align="right" colspan="2">
                                        <asp:Label ID="Label91" runat="server" CssClass="label" Text="دانشگاه/موسسه محل تحصیل"></asp:Label>
                                    </td>
                                    <td align="right" colspan="2">
                                        <asp:TextBox ID="txtUniversity" runat="server" Width="300px" TabIndex="69">-</asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="Label92" runat="server" CssClass="label" Text="نمره ارزشیابی"></asp:Label>
                                    </td>
                                    <td align="right">
                                        <asp:TextBox ID="txtValuationGrade" runat="server" TabIndex="70" Width="16px"></asp:TextBox>
                                    &nbsp;<asp:Label ID="Label93" runat="server" CssClass="label" Text="سال"></asp:Label>
                                    &nbsp;<asp:TextBox ID="txtValuationYear" runat="server" TabIndex="71" MaxLength="2" Width="16px"></asp:TextBox>
                                    </td>
                                    <td align="right" colspan="2">
                                        &nbsp;</td>
                                    <td align="right" colspan="2">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="Label94" runat="server" CssClass="label" Text="طبقه/طبقه تشویقی "></asp:Label>
                                    </td>
                                    <td align="right">
                                        <asp:TextBox ID="txtClassGrade" runat="server" TabIndex="72" Width="16px"></asp:TextBox>
                                    </td>
                                    <td align="right" colspan="4">
                                        <asp:Label ID="Label95" runat="server" CssClass="label" Text="تاریخ ارتقاء طبقه/سال اخذ طبقه تشویقی"></asp:Label>
                                    &nbsp;<asp:TextBox ID="txtClassdate" runat="server" TabIndex="73" Width="100px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" class="auto-style5">
                                        <asp:Label ID="Label96" runat="server" CssClass="label" Text="رتبه اخذ شده"></asp:Label>
                                    </td>
                                    <td align="right" class="auto-style5">
                            <asp:DropDownList ID="ddlBase0" runat="server" CssClass="label" TabIndex="46">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>مقدماتی</asp:ListItem>
                                <asp:ListItem>پایه</asp:ListItem>
                                <asp:ListItem>ارشد</asp:ListItem>
                                <asp:ListItem>خبره</asp:ListItem>
                                <asp:ListItem>عالی</asp:ListItem>
                            </asp:DropDownList>
                                    </td>
                                    <td align="right" class="auto-style5" colspan="2">
                                        <asp:Label ID="Label97" runat="server" CssClass="label" Text="تاریخ ارتقاء رتبه اخذ شده"></asp:Label>
                                    </td>
                                    <td align="right" class="auto-style5" colspan="2">
                                        <asp:TextBox ID="txtBasedate" runat="server" TabIndex="75" Width="100px"></asp:TextBox>
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
                                    <td align="left">
                                        <asp:Label ID="Label99" runat="server" CssClass="label" Text="تاریخ شروع"></asp:Label>
                                    </td>
                                    <td align="right">
                                        <asp:TextBox ID="txtSDate" runat="server" Text='<%# Bind("SDate") %>' TabIndex="77" Width="100px" />
                                    </td>
                                    <td align="left">
                                        <asp:Label ID="Label100" runat="server" CssClass="label" Text="تاریخ پایان"></asp:Label>
                                    </td>
                                    <td align="right">
                                        <asp:TextBox ID="txtEDate" runat="server" Text='-' TabIndex="78" Width="100px" />
                                    </td>
                                </tr>
                                </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

