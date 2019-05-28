<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

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
            width: 71px;
        }
        .style3
        {
            width: 467px;
        }
        .style4{
            height:29px;
            width:177px;
        }
        .auto-style1 {
            margin-left: 40px;
        }
        .auto-style2 {
            height: 73px;
        }
        .auto-style3 {
            width: 467px;
            height: 73px;
        }
        .auto-style4 {
            width: 71px;
            height: 73px;
        }
    </style>
</head>
<body style="background-color:Highlight">
    <form id="form1" runat="server">
    <div>
    
        <br />
        <table class="style1">
            <tr>
                <td colspan="9" 
                    style="font-family: 华文彩云; font-size: xx-large; color: #993300; text-align: center;">
                    用户登录界面<br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2" style="text-align: right">
                    用户名：</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox1" runat="server"  
                        ToolTip="用户名" CssClass="style4" Height="29px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="请输入用户名" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    </td>
                <td class="auto-style2">
                    </td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4" style="text-align: right">
                    密码：</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox2" runat="server"  TextMode="Password" 
                         ToolTip="密码" MaxLength="12" CssClass="style4" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="请输入密码" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;
                    <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="输入6~12位数字、英文字母，不包括空格（*必填）" 
                        ForeColor="Red" ValidationExpression="^[\w]{6,12}$" Display="Dynamic"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style2">
                    </td>
                <td class="auto-style2">
                    </td>
                <td class="auto-style2">
                    </td>
                <td class="auto-style2">
                    </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
&nbsp;<br />
                    <asp:Button ID="Button1" runat="server" Height="30px" onclick="Button1_Click" 
                        Text="登录" Width="62px" />
&nbsp;<asp:Button ID="Button2" runat="server" Height="30px" OnClick="Button2_Click" Text="清空" Width="62px" />
                    &nbsp; <a href="forfetPSD.aspx">忘记密码？</a>&nbsp; <a href="register.aspx">&nbsp;注册</a><br />
                </td>
                <td>
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
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp; 
                    <br />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
