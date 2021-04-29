<%@ Page Title="" Language="C#" AutoEventWireup="true" Theme="blue" MasterPageFile="~/Site1.Master"  CodeBehind="Login.aspx.cs" Inherits="demo1.Day4._26.Login" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <table  class="table">
                <tr>
                    <td colspan="2"><h2>登入</h2></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label1" runat="server" Text="用户名"></asp:Label> </td>
                    <td><asp:TextBox ID="tbName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label2" runat="server" Text="密码"></asp:Label></td>
                    <td><asp:TextBox ID="tbpasswd" runat="server" SkinID="txt1"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2"><asp:Button ID="btnLogin" runat="server" Text="Login" /></td>
                </tr>
            </table>
</asp:Content>
