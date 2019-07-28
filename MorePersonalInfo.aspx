<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MorePersonalInfo.aspx.cs" Inherits="MorePersonalInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="Table90P" dir="rtl">
        <tr>
            <td>
                <table align="center" class="auto-style1" dir="rtl">
                    <tr>
                        <td align="right">
                            <asp:ImageButton ID="imgbAccept" runat="server" ImageUrl="~/Images/Accept.jpg" OnClick="imgbAccept_Click" />
                        </td>
                        <td align="center">
                            <asp:Image ID="imgPerson" runat="server" CssClass="PersonelImage" ImageUrl="~/Images/Person.jpg" />
                        </td>
                        <td align="left">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/Khorooj.jpg" OnClick="ImageButton1_Click" />
                <asp:Image ID="Image5" runat="server" Height="32px" ImageUrl="~/Images/exit2.JPG" Width="32px" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" align="right">
                            <asp:Label ID="Label1" runat="server" CssClass="BigLabel" Text="مدارک تحصیلی"></asp:Label>
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
                        <td colspan="3">
                            <asp:GridView ID="GridView1" width="100%" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" CssClass="label" DataKeyNames="PersonFieldID" DataSourceID="SqlDataSourceField" ForeColor="#333333" GridLines="None" PageSize="4">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:CommandField CancelText="انصراف" DeleteText="حذف" EditText="ویرایش" ShowDeleteButton="True" ShowEditButton="True" UpdateText="تایید" />
                                    <asp:BoundField DataField="PersonID" HeaderText="شماره" SortExpression="PersonID" />
                                    <asp:BoundField DataField="FieldName" HeaderText="مدرک تحصیلی" SortExpression="FieldName" />
                                    <asp:BoundField DataField="Degree" HeaderText="رشته تحصیلی" SortExpression="Degree" />
                                    <asp:BoundField DataField="Date" HeaderText="تاریخ اخذ مدرک" SortExpression="Date" />
                                    <asp:BoundField DataField="UniversityName" HeaderText="دانشگاه/موسسه محل تحصیل" SortExpression="UniversityName" />
                                </Columns>
                                <EditRowStyle BackColor="#7C6F57" />
                                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#E3EAEB" />
                                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                <SortedAscendingHeaderStyle BackColor="#246B61" />
                                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                <SortedDescendingHeaderStyle BackColor="#15524A" />
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:FormView ID="FormViewField" Width="100%" runat="server" DataKeyNames="PersonFieldID" DataSourceID="SqlDataSourceField" CssClass="label">
                                <EditItemTemplate>
                                    PersonFieldID:
                                    <asp:Label ID="PersonFieldIDLabel1" runat="server" Text='<%# Eval("PersonFieldID") %>' />
                                    <br />
                                    PersonID:
                                    <asp:TextBox ID="PersonIDTextBox" runat="server" Text='<%# Bind("PersonID") %>' />
                                    <br />
                                    FieldName:
                                    <asp:TextBox ID="FieldNameTextBox" runat="server" Text='<%# Bind("FieldName") %>' />
                                    <br />
                                    UniversityName:
                                    <asp:TextBox ID="UniversityNameTextBox" runat="server" Text='<%# Bind("UniversityName") %>' />
                                    <br />
                                    Date:
                                    <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
                                    <br />
                                    Degree:
                                    <asp:TextBox ID="DegreeTextBox" runat="server" Text='<%# Bind("Degree") %>' />
                                    <br />
                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <table align="center" dir="rtl" class="Table90P">
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label2" runat="server" CssClass="label" Text="شماره"></asp:Label>
                                                &nbsp;</td>
                                            <td>
                                                <asp:TextBox ID="PersonIDTextBox" runat="server" Text='<%# Bind("PersonID") %>' />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label3" runat="server" CssClass="label" Text="رشته تحصیلی"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="FieldNameTextBox" runat="server" Text='<%# Bind("FieldName") %>' />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label4" runat="server" CssClass="label" Text="دانشگاه/موسسه محل تحصیل"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="UniversityNameTextBox" runat="server" Text='<%# Bind("UniversityName") %>' />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label5" runat="server" CssClass="label" Text="تاریخ اخذ مدرک تحصیلی"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label6" runat="server" CssClass="label" Text="مدرک تحصیلی"></asp:Label>
                                            </td>
                                            <td>                                                
                                                <asp:DropDownList ID="ddlDegree" runat="server" Text='<%# Bind("Degree") %>'>
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
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" CssClass="RedLbl" Text="تایید" />
                                                <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="greenLbl" Text="انصراف" />
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" CssClass="RedLbl" Text="تعریف مدرک تحصیلی جدید" />
                                </ItemTemplate>
                            </asp:FormView>
                        </td>
                    </tr>
                    </table>
            </td>
        </tr>
        <tr>
            <td>
                <table align="center" class="auto-style1" dir="rtl">
                    <tr>
                        <td align="right">
                            <asp:Label ID="Label8" runat="server" CssClass="BigLabel" Text="ارزشیابی"></asp:Label>
                            <asp:SqlDataSource ID="SqlDataSourceValue" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:KSHDBConnectionString %>" DeleteCommand="DELETE FROM [Valuation] WHERE [ValuationID] = @original_ValuationID AND [PersonID] = @original_PersonID AND [Year] = @original_Year AND [Grade] = @original_Grade" InsertCommand="INSERT INTO [Valuation] ([PersonID], [Year], [Grade]) VALUES (@PersonID, @Year, @Grade)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Valuation] WHERE ([PersonID] = @PersonID)" UpdateCommand="UPDATE [Valuation] SET [PersonID] = @PersonID, [Year] = @Year, [Grade] = @Grade WHERE [ValuationID] = @original_ValuationID AND [PersonID] = @original_PersonID AND [Year] = @original_Year AND [Grade] = @original_Grade">
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
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridViewValue" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ValuationID" DataSourceID="SqlDataSourceValue" GridLines="Horizontal" CssClass="label" PageSize="4" Width="100%" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px">
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
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:FormView ID="FormViewValue" runat="server" DataKeyNames="ValuationID" DataSourceID="SqlDataSourceValue" Width="100%">
                                <EditItemTemplate>
                                    ValuationID:
                                    <asp:Label ID="ValuationIDLabel1" runat="server" Text='<%# Eval("ValuationID") %>' />
                                    <br />
                                    PersonID:
                                    <asp:TextBox ID="PersonIDTextBox" runat="server" Text='<%# Bind("PersonID") %>' />
                                    <br />
                                    Year:
                                    <asp:TextBox ID="YearTextBox" runat="server" Text='<%# Bind("Year") %>' />
                                    <br />
                                    Grade:
                                    <asp:TextBox ID="GradeTextBox" runat="server" Text='<%# Bind("Grade") %>' />
                                    <br />
                                    <asp:LinkButton ID="UpdateButton0" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <table align="center" dir="rtl" class="Table90P">
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label11" runat="server" CssClass="label" Text="شماره"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="PersonIDTextBox0" runat="server" Text='<%# Bind("PersonID") %>' />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label12" runat="server" CssClass="label" Text="سال"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="YearTextBox0" runat="server" Text='<%# Bind("Year") %>' />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label13" runat="server" CssClass="label" Text="نمره ارزشیابی"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="GradeTextBox0" runat="server" Text='<%# Bind("Grade") %>' />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:LinkButton ID="InsertButton0" runat="server" CausesValidation="True" CommandName="Insert" CssClass="RedLbl" Text="تایید" />
                                                <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="greenLbl" Text="انصراف" />
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <table align="center" class="auto-style1" dir="rtl">
                                        <tr>
                                            <td align="center">
                                                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" CssClass="RedLbl" Text="تعریف ارزشیابی جدید" />
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:FormView>
                        </td>
                    </tr>
                    </table>
            </td>
        </tr>
        <tr>
            <td>
                <table align="center" class="auto-style1" dir="rtl">
                    <tr>
                        <td align="right">
                            <asp:Label ID="Label9" runat="server" CssClass="BigLabel" Text="طبقه"></asp:Label>
                            <asp:SqlDataSource ID="SqlDataSourceGroup" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:KSHDBConnectionString %>" DeleteCommand="DELETE FROM [Groupe] WHERE [GroupID] = @original_GroupID AND [PersonID] = @original_PersonID AND [ClassDate] = @original_ClassDate AND [ClassGrade] = @original_ClassGrade" InsertCommand="INSERT INTO [Groupe] ([PersonID], [ClassDate], [ClassGrade]) VALUES (@PersonID, @ClassDate, @ClassGrade)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Groupe] WHERE ([PersonID] = @PersonID)" UpdateCommand="UPDATE [Groupe] SET [PersonID] = @PersonID, [ClassDate] = @ClassDate, [ClassGrade] = @ClassGrade WHERE [GroupID] = @original_GroupID AND [PersonID] = @original_PersonID AND [ClassDate] = @original_ClassDate AND [ClassGrade] = @original_ClassGrade">
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
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridViewGroup" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="GroupID" DataSourceID="SqlDataSourceGroup" GridLines="None" PageSize="4" CssClass="label" Width="100%" ForeColor="#333333">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" CancelText="انصراف" DeleteText="حذف" EditText="ویرایش" UpdateText="تایید" />
                                    <asp:BoundField DataField="PersonID" HeaderText="شماره" SortExpression="PersonID" />
                                    <asp:BoundField DataField="ClassDate" HeaderText="تاریخ ارتقاء" SortExpression="ClassDate" />
                                    <asp:BoundField DataField="ClassGrade" HeaderText="طبقه اخذ شده" SortExpression="ClassGrade" />
                                </Columns>
                                <EditRowStyle BackColor="#7C6F57" />
                                <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#E3EAEB" />
                                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                <SortedAscendingHeaderStyle BackColor="#246B61" />
                                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                <SortedDescendingHeaderStyle BackColor="#15524A" />
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:FormView ID="FormViewGroup" Width="100%" runat="server" DataKeyNames="GroupID" DataSourceID="SqlDataSourceGroup">
                                <EditItemTemplate>
                                    GroupID:
                                    <asp:Label ID="GroupIDLabel1" runat="server" Text='<%# Eval("GroupID") %>' />
                                    <br />
                                    PersonID:
                                    <asp:TextBox ID="PersonIDTextBox" runat="server" Text='<%# Bind("PersonID") %>' />
                                    <br />
                                    ClassDate:
                                    <asp:TextBox ID="ClassDateTextBox" runat="server" Text='<%# Bind("ClassDate") %>' />
                                    <br />
                                    ClassGrade:
                                    <asp:TextBox ID="ClassGradeTextBox" runat="server" Text='<%# Bind("ClassGrade") %>' />
                                    <br />
                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <table align="center" dir="rtl" class="Table90P">
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label14" runat="server" CssClass="label" Text="شماره"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="PersonIDTextBox" runat="server" Text='<%# Bind("PersonID") %>' />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label15" runat="server" CssClass="label" Text="تاریخ ارتقاء"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="ClassDateTextBox" runat="server" Text='<%# Bind("ClassDate") %>' />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label16" runat="server" CssClass="label" Text="طبقه اخذ شده"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="ClassGradeTextBox" runat="server" Text='<%# Bind("ClassGrade") %>' />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" CssClass="RedLbl" Text="تایید" />
                                                <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="greenLbl" Text="انصراف" />
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <table align="center" class="auto-style1" dir="rtl">
                                        <tr>
                                            <td align="center">
                                                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" CssClass="RedLbl" Text="تعریف طبقه جدید" />
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:FormView>
                        </td>
                    </tr>
                    </table>
            </td>
        </tr>
        <tr>
            <td>
                <table align="center" class="auto-style1" dir="rtl">
                    <tr>
                        <td align="right">
                            <asp:Label ID="Label10" runat="server" CssClass="BigLabel" Text="رتبه"></asp:Label>
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
                        <td>
                            <asp:GridView ID="GridViewBase" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="BaseID" DataSourceID="SqlDataSourceBase" PageSize="4" CssClass="label" Width="100%" GridLines="Horizontal">
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
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:FormView ID="FormViewBase" Width="100%" runat="server" DataKeyNames="BaseID" DataSourceID="SqlDataSourceBase">
                                <EditItemTemplate>
                                    BaseID:
                                    <asp:Label ID="BaseIDLabel1" runat="server" Text='<%# Eval("BaseID") %>' />
                                    <br />
                                    PersonID:
                                    <asp:TextBox ID="PersonIDTextBox" runat="server" Text='<%# Bind("PersonID") %>' />
                                    <br />
                                    BaseDate:
                                    <asp:TextBox ID="BaseDateTextBox" runat="server" Text='<%# Bind("BaseDate") %>' />
                                    <br />
                                    BaseGrade:
                                    <asp:TextBox ID="BaseGradeTextBox" runat="server" Text='<%# Bind("BaseGrade") %>' />
                                    <br />
                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <table align="center" dir="rtl" class="Table90P">
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label17" runat="server" CssClass="label" Text="شماره"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="PersonIDTextBox" runat="server" Text='<%# Bind("PersonID") %>' />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label18" runat="server" CssClass="label" Text="تاریخ ارتقاء"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="BaseDateTextBox" runat="server" Text='<%# Bind("BaseDate") %>' />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label19" runat="server" CssClass="label" Text="رتبه اخذ شده"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="BaseGradeTextBox" runat="server" Text='<%# Bind("BaseGrade") %>' />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" CssClass="RedLbl" Text="تایید" />
                                                <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="greenLbl" Text="انصراف" />
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <table align="center" class="auto-style1" dir="rtl">
                                        <tr>
                                            <td align="center">
                                                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" CssClass="RedLbl" Text="تعریف رتبه جدید" />
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:FormView>
                        </td>
                    </tr>
                    </table>
            </td>
        </tr>
        <tr>
            <td>

                <table align="center" class="auto-style1" dir="rtl">
                    <tr>
                        <td align="right">
                            <asp:Label ID="Label7" runat="server" CssClass="BigLabel" Text="سابقه فرد"></asp:Label>
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
                        <td>
                            <asp:GridView ID="GridViewSummary" Width="100%" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="SummaryID" DataSourceID="SqlDataSourceSummary" ForeColor="#333333" GridLines="None" PageSize="6" CssClass="label">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:CommandField CancelText="انصراف" DeleteText="حذف" EditText="ویرایش" ShowDeleteButton="True" ShowEditButton="True" UpdateText="تایید" />
                                    <asp:BoundField DataField="PersonID" HeaderText="شماره" SortExpression="PersonID" />
                                    <asp:BoundField DataField="Title" HeaderText="عنوان" SortExpression="Title" />
                                    <asp:BoundField DataField="SDate" HeaderText="تاریخ شروع" SortExpression="SDate" />
                                    <asp:BoundField DataField="EDate" HeaderText="تاریخ پایان" SortExpression="EDate" />
                                </Columns>
                                <EditRowStyle BackColor="#7C6F57" />
                                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#E3EAEB" />
                                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                <SortedAscendingHeaderStyle BackColor="#246B61" />
                                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                <SortedDescendingHeaderStyle BackColor="#15524A" />
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:FormView ID="FormViewSummary" Width="100%" runat="server" DataKeyNames="SummaryID" DataSourceID="SqlDataSourceSummary">
                                <EditItemTemplate>
                                    SummaryID:
                                    <asp:Label ID="SummaryIDLabel1" runat="server" Text='<%# Eval("SummaryID") %>' />
                                    <br />
                                    PersonID:
                                    <asp:TextBox ID="PersonIDTextBox" runat="server" Text='<%# Bind("PersonID") %>' />
                                    <br />
                                    SDate:
                                    <asp:TextBox ID="SDateTextBox" runat="server" Text='<%# Bind("SDate") %>' />
                                    <br />
                                    EDate:
                                    <asp:TextBox ID="EDateTextBox" runat="server" Text='<%# Bind("EDate") %>' />
                                    <br />
                                    Title:
                                    <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                                    <br />
                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <table align="center" dir="rtl" class="Table90P">
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label20" runat="server" CssClass="label" Text="شماره"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="PersonIDTextBox" runat="server" Text='<%# Bind("PersonID") %>' />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label21" runat="server" CssClass="label" Text="عنوان سابقه"></asp:Label>
                                            </td>
                                            <td>
                                                &nbsp;<asp:DropDownList ID="TitleDropDownList" runat="server" CssClass="label" SelectedValue='<%# Bind("Title") %>'>
                                                    <asp:ListItem></asp:ListItem>
                                                    <asp:ListItem>تاریخ ماموریت به سایر سازمان ها</asp:ListItem>
                                                    <asp:ListItem>تاریخ مرخصی استعلاجی</asp:ListItem>
                                                    <asp:ListItem>تاریخ اشتغال نیمه وقت</asp:ListItem>
                                                    <asp:ListItem>تاریخ مرخصی بدون حقوق</asp:ListItem>
                                                    <asp:ListItem>تاریخ مرخصی زایمان</asp:ListItem>
                                                    <asp:ListItem>تاریخ شیردهی</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label22" runat="server" CssClass="label" Text="تاریخ شروع"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="SDateTextBox" runat="server" Text='<%# Bind("SDate") %>' />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label23" runat="server" CssClass="label" Text="تاریخ پایان"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="EDateTextBox" runat="server" Text='<%# Bind("EDate") %>' />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" CssClass="RedLbl" Text="تایید" />
                                                &nbsp;&nbsp;
                                                <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="greenLbl" Text="انصراف" />
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <table align="center" class="auto-style1" dir="rtl">
                                        <tr>
                                            <td align="center">
                                                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" CssClass="RedLbl" Text="تعریف سابقه جدید" />
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:FormView>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>

            </td>
        </tr>
    </table>
</asp:Content>

