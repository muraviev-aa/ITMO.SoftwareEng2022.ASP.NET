<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Main_Page.aspx.cs" Inherits="ITMO.ASP.NET.Course2022.FinalWork.Main_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%">
        <tr>
            <td style="text-align: left; width: 420px;">&nbsp;</td>
            <td style="text-align: left; width: 359px;">&nbsp;</td>
            <td style="text-align: left">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: center; font-size: large"><strong>To fill in the table &quot;Students&quot; enter data</strong></td>
        </tr>
        <tr>
            <td style="text-align: center; font-size: large; " colspan="3">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            </td>
        </tr>
        <tr>
            <td style="font-size: medium; text-align: right; width: 420px;">First_name</td>
            <td style="width: 359px">
                <asp:TextBox ID="TextBox1" runat="server" 
                    BackColor="White" 
                    BorderColor="Black" 
                    BorderStyle="Solid" 
                    Width="150px" 
                    autocomplete="off">
                </asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                    ControlToValidate="TextBox1" runat="server"
                    ErrorMessage="Only English Text"
                    ForeColor="#CC0000"
                    ValidationExpression="[a-zA-Z]+">
                </asp:RegularExpressionValidator>
            </td>
            <td style="text-align: left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Заполните поле имени" ForeColor="Red">Не оставляйте поле пустым</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-size: medium; text-align: right; width: 420px;">Second_name</td>
            <td style="width: 359px">
                <asp:TextBox ID="TextBox2" runat="server" 
                    BackColor="White" 
                    BorderColor="Black" 
                    BorderStyle="Solid" 
                    Width="150px" 
                    autocomplete="off">
                </asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                    ControlToValidate="TextBox2" runat="server"
                    ErrorMessage="Only English Text"
                    ForeColor="#CC0000"
                    ValidationExpression="[a-zA-Z]+">
                </asp:RegularExpressionValidator>
            </td>
            <td style="text-align: left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Заполните поле фамилии" ForeColor="Red">Не оставляйте поле пустым</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-size: medium; text-align: right; width: 420px;">ASP_WEB</td>
            <td style="width: 359px">
                <asp:TextBox ID="TextBox3" runat="server" 
                    BackColor="White" 
                    BorderColor="Black" 
                    BorderStyle="Solid" 
                    Width="150px" 
                    autocomplete="off">
                </asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3"
                    ControlToValidate="TextBox3" runat="server"
                    ErrorMessage="Only Number"
                    ForeColor="#CC0000"
                    ValidationExpression="\d+">
                    </asp:RegularExpressionValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4"
                    ControlToValidate="TextBox3" runat="server"
                    ErrorMessage="Only 1-5"
                    ForeColor="#CC0000"
                    ValidationExpression="[1-5]+">
                </asp:RegularExpressionValidator>
            </td>
            <td style="text-align: left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Заполните поле оценки" ForeColor="Red">Не оставляйте поле пустым</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-size: medium; height: 23px; text-align: right; width: 420px;">ASP_MVC</td>
            <td style="height: 23px; width: 359px;">
                <asp:TextBox ID="TextBox4" runat="server" 
                    BackColor="White" 
                    BorderColor="Black" 
                    BorderStyle="Solid" 
                    Width="150px" 
                    autocomplete="off">
                </asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5"
                    ControlToValidate="TextBox4" runat="server"
                    ErrorMessage="Only Number"
                    ForeColor="#CC0000"
                    ValidationExpression="\d+">
                    </asp:RegularExpressionValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6"
                    ControlToValidate="TextBox4" runat="server"
                    ErrorMessage="Only 1-5"
                    ForeColor="#CC0000"
                    ValidationExpression="[1-5]+">
                </asp:RegularExpressionValidator>
            </td>
            <td style="text-align: left; height: 23px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Заполните поле оценки" ForeColor="Red">Не оставляйте поле пустым</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-size: medium; text-align: right; width: 420px;">Average_score</td>
            <td style="width: 359px">
                <asp:TextBox ID="TextBox5" runat="server" BackColor="White" BorderColor="White" ReadOnly="True" Width="150px" autocomplete="off"></asp:TextBox>
            </td>
            <td style="text-align: left">&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right; width: 420px;">&nbsp;</td>
            <td style="width: 359px">
                <asp:Button ID="AverageScore" runat="server" Text="Average score" Width="160px" OnClick="AverageScore_Click" />
            </td>
            <td style="text-align: left">&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right; width: 420px;">&nbsp;</td>
            <td style="width: 359px">
                <asp:Button ID="InsertRow" runat="server" Text="Insert row" Width="160px" OnClick="InsertRow_Click" />
            </td>
            <td style="text-align: left">&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: left; width: 420px;">
                <asp:GridView ID="GridView1" runat="server" style="font-size: large" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="Id_user" HeaderText="Id_user" InsertVisible="False" ReadOnly="True" SortExpression="Id_user" />
                        <asp:BoundField DataField="First_name" HeaderText="First_name" SortExpression="First_name" />
                        <asp:BoundField DataField="Second_name" HeaderText="Second_name" SortExpression="Second_name" />
                        <asp:BoundField DataField="ASP_WEB" HeaderText="ASP_WEB" SortExpression="ASP_WEB" />
                        <asp:BoundField DataField="ASP_MVC" HeaderText="ASP_MVC" SortExpression="ASP_MVC" />
                        <asp:BoundField DataField="Average_score" HeaderText="Average_score" SortExpression="Average_score" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDb)\MSSQLLocalDB;AttachDbFilename=D:\northwnd.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Students]"></asp:SqlDataSource>
            </td>
            <td style="width: 359px">&nbsp;</td>
            <td style="text-align: left">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
