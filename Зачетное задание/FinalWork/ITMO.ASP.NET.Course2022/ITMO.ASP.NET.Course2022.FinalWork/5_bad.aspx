<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="5_bad.aspx.cs" Inherits="ITMO.ASP.NET.Course2022.FinalWork._5_bad" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%">
        <tr>
            <td style="text-align: left">&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: left; font-size: x-large">5 bad students</td>
        </tr>
        <tr>
            <td style="text-align: left">
                <asp:GridView ID="GridView1" runat="server" style="font-size: large">
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
