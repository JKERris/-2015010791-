<%@ Page Language="C#" AutoEventWireup="true" CodeFile="liuyan.aspx.cs" Inherits="yonghuliuyan" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 89px;
            text-align: right;
        }
        .style3
        {
            width: 91px;
            text-align: right;
        }
    </style>
</head>
<body bgcolor="#66ffcc">
    <form id="form1" runat="server">
    <div>
    
        <br />
        <table class="style1">
            <tr>
                <td style="font-family: 华文新魏; font-size: xx-large; color: #993300; text-align: center;">
                    朋友留言板<br />
                    您的登录时间为：<asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" Height="319px">
            <table class="style1">
                <tr>
                    <td style="font-size: x-large">
                        留言人：<asp:TextBox ID="TextBox1" runat="server" Height="27px" Width="168px" 
                            ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                        &nbsp; 您的手机号码是：<asp:Label ID="Label2" runat="server"></asp:Label>
                        &nbsp;
                    </td>
                </tr>
            </table>
            <table class="style1">
                <tr>
                    <td class="style2">
                        留言内容：</td>
                    <td>
                        <asp:Panel ID="Panel2" runat="server" Height="108px" Width="350px">
                            <asp:TextBox ID="TextBox2" runat="server" Height="106px" Width="345px" 
                                TextMode="MultiLine"></asp:TextBox>
                        </asp:Panel>
                        &nbsp;</td>
                </tr>
            </table>
            <table class="style1">
                <tr>
                    <td class="style3">
                        给</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Height="29px" Width="136px" 
                            ontextchanged="TextBox3_TextChanged"></asp:TextBox>
                        &nbsp;
                        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                        <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
            <table class="style1">
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Height="28px" Text="留言" Width="64px" 
                            onclick="Button1_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Height="28px" onclick="Button2_Click" 
                            Text="清空" Width="64px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button3" runat="server" Height="28px" onclick="Button3_Click" 
                            Text="退出登录" Width="64px" />
                    </td>
                </tr>
            </table>
            <br />
        </asp:Panel>
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
