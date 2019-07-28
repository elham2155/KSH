<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Positions.aspx.cs" Inherits="Positions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" dir="rtl" class="Table90P">
        <tr>
            <td align="right">
                <asp:Label ID="Label8" runat="server" CssClass="BigLabel" Text="پست سازمانی خالی"></asp:Label>
            </td>
            <td align="left">
                <asp:ImageButton ID="imgbHome" runat="server" Height="60px" ImageUrl="~/Images/Home2.png" Width="60px" OnClick="imgbHome_Click" />
                <asp:ImageButton ID="imgbExit" runat="server" ImageUrl="~/Images/exit2.JPG" OnClick="imgbExit_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:SqlDataSource ID="SqlDataSourceEmptyP" runat="server" ConnectionString="<%$ ConnectionStrings:KSHDBConnectionString %>" SelectCommand="SELECT Positions.PositionID, Positions.Position, Positions.UnitID, Unit.UnitName FROM Positions INNER JOIN Unit ON Positions.UnitID = Unit.UnitID WHERE (Positions.PersonID IS NULL)"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridViewEmpty" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="label" DataKeyNames="PositionID" DataSourceID="SqlDataSourceEmptyP" ForeColor="Black" GridLines="Vertical" PageSize="25" Width="100%">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="UnitID" HeaderText="کد واحد سازمانی" SortExpression="UnitID" />
                        <asp:BoundField DataField="UnitName" HeaderText="نام واحد سازمانی" SortExpression="UnitName" />
                        <asp:BoundField DataField="Position" HeaderText="عنوان پست سازمانی" SortExpression="Position" />
                        <asp:BoundField DataField="PositionID" HeaderText="شماره پست سازمانی" ReadOnly="True" SortExpression="PositionID" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" align="right">
                <asp:Label ID="Label3" runat="server" CssClass="BigLabel" Text="واحد سازمانی"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:SqlDataSource ID="SqlDataSourceUnit" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:KSHDBConnectionString %>" DeleteCommand="DELETE FROM [Unit] WHERE [UnitID] = @original_UnitID AND [UnitName] = @original_UnitName" InsertCommand="INSERT INTO [Unit] ([UnitName]) VALUES (@UnitName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Unit]" UpdateCommand="UPDATE [Unit] SET [UnitName] = @UnitName WHERE [UnitID] = @original_UnitID AND [UnitName] = @original_UnitName">
                    <DeleteParameters>
                        <asp:Parameter Name="original_UnitID" Type="Int32" />
                        <asp:Parameter Name="original_UnitName" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="UnitName" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="UnitName" Type="String" />
                        <asp:Parameter Name="original_UnitID" Type="Int32" />
                        <asp:Parameter Name="original_UnitName" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridViewUnit" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" CssClass="label" DataKeyNames="UnitID" DataSourceID="SqlDataSourceUnit" ForeColor="Black" PageSize="20" Width="100%">
                    <Columns>
                        <asp:CommandField CancelText="انصراف" DeleteText="حذف" EditText="ویرایش" ShowDeleteButton="True" ShowEditButton="True" UpdateText="تایید" >
                        <ControlStyle ForeColor="Maroon" />
                        </asp:CommandField>
                        <asp:BoundField DataField="UnitID" HeaderText="کد واحد" InsertVisible="False" ReadOnly="True" SortExpression="UnitID" />
                        <asp:BoundField DataField="UnitName" HeaderText="نام واحد" SortExpression="UnitName" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
            </td>
            <td align="center">
                <asp:FormView ID="FormViewUnit" Width="100%" runat="server" DataKeyNames="UnitID" DataSourceID="SqlDataSourceUnit" HorizontalAlign="Center">
                    <EditItemTemplate>
                        UnitID:
                        <asp:Label ID="UnitIDLabel1" runat="server" Text='<%# Eval("UnitID") %>' />
                        <br />
                        UnitName:
                        <asp:TextBox ID="UnitNameTextBox" runat="server" Text='<%# Bind("UnitName") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <table align="center" class="auto-style1" dir="rtl">
                            <tr>
                                <td>
                                    <asp:Label ID="Label2" runat="server" CssClass="label" Text="عنوان واحد"></asp:Label>
                                    &nbsp;<br />&nbsp;&nbsp;&nbsp; </td>
                                <td>
                                    <asp:TextBox ID="UnitNameTextBox0" runat="server" Text='<%# Bind("UnitName") %>' Width="400px" />
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
                        <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" CssClass="RedLbl" Text="تعریف واحد جدید" />
                    </ItemTemplate>
                </asp:FormView>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" align="right">
                <asp:Label ID="Label1" runat="server" CssClass="BigLabel" Text="پست سازمانی"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:SqlDataSource ID="SqlDataSourcePosition" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:KSHDBConnectionString %>" DeleteCommand="DELETE FROM [Positions] WHERE [PositionID] = @original_PositionID AND [Position] = @original_Position AND (([PersonID] = @original_PersonID) OR ([PersonID] IS NULL AND @original_PersonID IS NULL)) AND (([UnitID] = @original_UnitID) OR ([UnitID] IS NULL AND @original_UnitID IS NULL))" InsertCommand="INSERT INTO [Positions] ([PositionID], [Position], [PersonID], [UnitID]) VALUES (@PositionID, @Position, @PersonID, @UnitID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Positions]" UpdateCommand="UPDATE [Positions] SET [Position] = @Position, [PersonID] = @PersonID, [UnitID] = @UnitID WHERE [PositionID] = @original_PositionID AND [Position] = @original_Position AND (([PersonID] = @original_PersonID) OR ([PersonID] IS NULL AND @original_PersonID IS NULL)) AND (([UnitID] = @original_UnitID) OR ([UnitID] IS NULL AND @original_UnitID IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_PositionID" Type="String" />
                        <asp:Parameter Name="original_Position" Type="String" />
                        <asp:Parameter Name="original_PersonID" Type="Int32" />
                        <asp:Parameter Name="original_UnitID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="PositionID" Type="String" />
                        <asp:Parameter Name="Position" Type="String" />
                        <asp:Parameter Name="PersonID" Type="Int32" />
                        <asp:Parameter Name="UnitID" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Position" Type="String" />
                        <asp:Parameter Name="PersonID" Type="Int32" />
                        <asp:Parameter Name="UnitID" Type="Int32" />
                        <asp:Parameter Name="original_PositionID" Type="String" />
                        <asp:Parameter Name="original_Position" Type="String" />
                        <asp:Parameter Name="original_PersonID" Type="Int32" />
                        <asp:Parameter Name="original_UnitID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridViewPositin" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" CssClass="label" DataKeyNames="PositionID" DataSourceID="SqlDataSourcePosition" ForeColor="Black" GridLines="Vertical" PageSize="25" Width="100%">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:CommandField CancelText="انصراف" DeleteText="حذف" EditText="ویرایش" ShowDeleteButton="True" ShowEditButton="True" UpdateText="تایید" >
                        <ControlStyle ForeColor="Maroon" />
                        </asp:CommandField>
                        <asp:BoundField DataField="PositionID" HeaderText="شماره پست سازمانی" ReadOnly="True" SortExpression="PositionID" />
                        <asp:BoundField DataField="Position" HeaderText="عنوان پست سازمانی" SortExpression="Position" />
                        <asp:BoundField DataField="PersonID" HeaderText="کد شخص" SortExpression="PersonID" />
                        <asp:BoundField DataField="UnitID" HeaderText="کد واحد سازمانی" SortExpression="UnitID" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:FormView ID="FormViewPosition" Width="100%" runat="server" DataKeyNames="PositionID" DataSourceID="SqlDataSourcePosition">
                    <EditItemTemplate>
                        PositionID:
                        <asp:Label ID="PositionIDLabel1" runat="server" Text='<%# Eval("PositionID") %>' />
                        <br />
                        Position:
                        <asp:TextBox ID="PositionTextBox" runat="server" Text='<%# Bind("Position") %>' />
                        <br />
                        PersonID:
                        <asp:TextBox ID="PersonIDTextBox" runat="server" Text='<%# Bind("PersonID") %>' />
                        <br />
                        UnitID:
                        <asp:TextBox ID="UnitIDTextBox" runat="server" Text='<%# Bind("UnitID") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <table align="center" dir="rtl" class="Table90P">
                            <tr>
                                <td>
                                    <asp:Label ID="Label4" runat="server" CssClass="label" Text="شماره پست سازمانی"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="PositionIDTextBox" runat="server" Text='<%# Bind("PositionID") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label5" runat="server" CssClass="label" Text="عنوان پست سازمانی"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="PositionTextBox0" runat="server" Text='<%# Bind("Position") %>' Width="350px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label7" runat="server" CssClass="label" Text="کد واحد سازمانی"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="UnitIDTextBox0" runat="server" Text='<%# Bind("UnitID") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label6" runat="server" CssClass="label" Text="کد شخص"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="PersonIDTextBox0" runat="server" Text='<%# Bind("PersonID") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" CssClass="RedLbl" Text="تایید" />
                                    &nbsp;&nbsp;
                                    <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="greenLbl" Text="انصراف" />
                                </td>
                                <td class="auto-style2"></td>
                            </tr>
                        </table>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" CssClass="RedLbl" Text="تعریف پست سازمانی جدید" />
                    </ItemTemplate>
                </asp:FormView>
            </td>
        </tr>
    </table>
</asp:Content>

