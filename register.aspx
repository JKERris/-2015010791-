<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

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
            height: 20px;
            text-align: left;
        }
        .style3
        {
            height: 20px;
            text-align: right;
            width: 180px;
        }
        .style4
        {
            width: 180px;
        }
        .style5
        {
            height: 20px;
            text-align: left;
            width: 311px;
        }
        .style6
        {
            width: 311px;
        }
        .style7
        {
            height: 20px;
            text-align: left;
            width: 14px;
        }
        .style8
        {
            width: 14px;
        }
    </style>
</head>
<body bgcolor="#99ffcc">
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="8" 
                    style="font-family: 华文彩云; color: #993300; font-size: xx-large; text-align: center;">
                    用户注册界面<br />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                </td>
                <td class="style2">
                </td>
                <td class="style3">
                    姓名：</td>
                <td class="style5">
                    <asp:TextBox ID="TextBox1" runat="server" Height="29px" Width="155px" 
                        ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                &nbsp;
                    <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td class="style7">
                </td>
                <td class="style2">
                </td>
                <td class="style2">
                </td>
                <td class="style2">
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="style4" style="text-align: right">
                    密码：</td>
                <td class="style6">
                    <asp:TextBox ID="TextBox2" runat="server" Height="29px" Width="155px" 
                        TextMode="Password"></asp:TextBox>
&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="输入6~12位数字、英文字母，不包括空格（*必填）" 
                        ForeColor="Red" ValidationExpression="^[\w]{6,12}$"></asp:RegularExpressionValidator>
                </td>
                <td class="style8">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="style4" style="text-align: right">
                    确认密码：</td>
                <td class="style6">
                    <asp:TextBox ID="TextBox3" runat="server" Height="29px" Width="155px" 
                        TextMode="Password"></asp:TextBox>
&nbsp;
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox3" ControlToValidate="TextBox2" 
                        ErrorMessage="两次输入密码不一致" ForeColor="Red"></asp:CompareValidator>
                </td>
                <td class="style8">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="style4" style="text-align: right">
                    预设问题：</td>
                <td class="style6">
                    <asp:TextBox ID="TextBox4" runat="server" Height="29px" Width="155px"></asp:TextBox>
                </td>
                <td class="style8">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="style4" style="text-align: right">
                    问题答案：</td>
                <td class="style6">
                    <asp:TextBox ID="TextBox5" runat="server" Height="29px" Width="155px"></asp:TextBox>
                </td>
                <td class="style8">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style6">
                    <br />
                    <asp:Button ID="Button1" runat="server" Height="30px" Text="注册" Width="68px" 
                        onclick="Button1_Click" />
&nbsp;
                    <asp:Button ID="Button2" runat="server" Height="30px" onclick="Button2_Click" 
                        Text="取消" Width="68px" />
&nbsp;&nbsp;&nbsp;&nbsp; <a href="login.aspx">返回</a></td>
                <td class="style8">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
