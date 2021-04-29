<%@ Page Title="" Language="C#" MasterPageFile="~/Day0429/masterpage.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="demo1.Day0429.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                <table  class="table">
                <tr>
                    <td colspan="2"><h2>登入</h2></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label1" runat="server" Text="用户名" Width="20px" EnableViewState="True" Font-Size="Small"></asp:Label> </td>
                    <td><asp:TextBox ID="tbName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label2" runat="server" Text="密码" Width="20px" Font-Size="Small"></asp:Label></td>
                    <td><asp:TextBox ID="tbpasswd" runat="server" SkinID="txt1""></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2"><asp:Button ID="btnLogin" runat="server" Text="登入" /></td>
                </tr>
            </table>
</asp:Content>
