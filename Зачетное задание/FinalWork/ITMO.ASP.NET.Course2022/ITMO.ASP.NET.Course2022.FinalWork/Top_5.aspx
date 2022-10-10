<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Top_5.aspx.cs" Inherits="ITMO.ASP.NET.Course2022.FinalWork.Top_5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%">
        <tr>
            <td style="text-align: left">&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: left; font-size: x-large">Top 5 students</td>
        </tr>
        <tr>
            <td style="text-align: left">
                <asp:GridView ID="GridView1" runat="server" style="font-size: large">
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
