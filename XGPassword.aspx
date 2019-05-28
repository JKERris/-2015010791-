<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="XGPassword.aspx.cs" Inherits="XGPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 553px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <div>
        <table class="style1">
            <tr>
                <td style="font-family: 华文行楷; font-size: xx-large; color: #993300; text-align: center;">
                    修改密码界面</td>
            </tr>
        </table>
        <table class="style1">
            <tr>
                <td class="style2" style="font-size: large; text-align: right;">
                    用户名：</td>
                <td style="font-size: large">
                    <asp:TextBox ID="TextBox4" runat="server" Height="25px" Width="163px" 
                        ToolTip="自己的用户名"></asp:TextBox>
                &nbsp;
                    <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2" style="font-size: large; text-align: right;">
                    旧密码：</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="163px" 
                        TextMode="Password" ToolTip="原来的密码"></asp:TextBox>
                &nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2" style="font-size: large; text-align: right;">
                    新密码：</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="163px" 
                        TextMode="Password" ToolTip="新密码"></asp:TextBox>
&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="输入6~12位数字、英文字母，不包括空格（*必填）" 
                        ForeColor="Red" ValidationExpression="^[\w]{6,12}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style2" style="font-size: large; text-align: right;">
                    确认新密码：</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="163px" 
                        TextMode="Password" ToolTip="重复新密码"></asp:TextBox>
&nbsp;
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
                        ErrorMessage="两次输入新密码不一致" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style2" style="font-size: large">
                    &nbsp;</td>
                <td>
&nbsp;
                    <br />
                    <asp:Button ID="Button1" runat="server" Height="29px" Text="修改" Width="67px" 
                        onclick="Button1_Click" />
&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Height="29px" onclick="Button2_Click" 
                        Text="取消" Width="67px" />
                    &nbsp;
                    <a href="登录首页.aspx">返回</a>
&nbsp;<br />
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2" style="font-size: large">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2" style="font-size: large">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2" style="font-size: large">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2" style="font-size: large">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
    </div>
</asp:Content>


