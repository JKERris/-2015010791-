<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forfetPSD.aspx.cs" Inherits="forfetPSD" %>

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
            width: 585px;
            text-align: right;
        }
        .auto-style1 {
            width: 585px;
            text-align: right;
            height: 53px;
        }
        .auto-style2 {
            height: 53px;
        }
    </style>
</head>
<body bgcolor="#66ffcc">
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td style="font-family: 华文仿宋; font-size: xx-large; color: #993300; text-align: center;">
                    忘记密码界面</td>
            </tr>
        </table>
        <table class="style1">
            <tr>
                <td class="style2">
                    用户姓名：</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server" Height="26px" Width="154px"></asp:TextBox>
                &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtName" ErrorMessage="用户名不能为空" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:Label ID="labName" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    预留问题：</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtProblem" runat="server" Height="26px" Width="154px" ReadOnly="True"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="labProblem" runat="server" ForeColor="Red" OnDataBinding="Page_Load"></asp:Label>
&nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    问题答案：</td>
                <td>
                    <asp:TextBox ID="txtAnswer" runat="server" Height="26px" Width="154px"></asp:TextBox>
                &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtAnswer" ErrorMessage="问题答案不能为空" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:Label ID="labAnswer" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2" style="font-family: 宋体;">
                    您的密码是：</td>
                <td style="font-size: xx-large">
                    <asp:Label ID="labCode" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Height="31px" Text="找回 " Width="65px" 
                        onclick="Button1_Click" />
&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Enabled="False" 
                        Visible="False"></asp:Label>
                    &nbsp;<a href="login.aspx">返回</a>
                    <br />
                    <br />
                </td>
            </tr>
            </table>
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
