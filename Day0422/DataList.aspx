
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataList.aspx.cs" Inherits="demo1.Day0422.DataList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DataList ID="dtBookinfo" runat="server">
                <ItemTemplate>
                    <table style="width:100%;">
                        <tr>
                            <td rowspan="3"><img src="../img/chaxun%20tubiao.gif" /></td>
                            <td colspan="2">
                                <img src="../img/tianjia%20tubiao.gif" />
                                <%# Eval("bookname") %></td>
                        </tr>
                        <tr>
                            <td><%# Eval("bookcode") %></td>
                            <td><%# Eval("inTime")  %></td>
                        </tr>
                        <tr>
                            <td colspan="2"><%# Eval("pubname") %></td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
        <asp:Label ID="lbCurrentPage" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="lbPageCount" runat="server" Text="Label"></asp:Label>
        <asp:LinkButton ID="lbtnFirst" runat="server" OnClick="lbtnFirst_Click">首页</asp:LinkButton>
        <asp:LinkButton ID="lbtnLast" runat="server" OnClick="lbtnLast_Click">&lt;上一页</asp:LinkButton>
        <asp:LinkButton ID="lbtnNext" runat="server" OnClick="lbtnNext_Click">下一页&gt;</asp:LinkButton>
        <asp:LinkButton ID="lbtnEnd" runat="server" OnClick="lbtnEnd_Click">尾页</asp:LinkButton>
    </form>
</body>
</html>
