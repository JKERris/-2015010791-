<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="tianjiafriend.aspx.cs" Inherits="tianjiafriend" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 174px;
    }
    .style3
    {
        width: 524px;
    }
        .auto-style1 {
            height: 45px;
        }
        .auto-style2 {
            width: 174px;
            height: 45px;
        }
        .auto-style3 {
            width: 524px;
            height: 45px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <div>
    <table class="style1">
        <tr>
            <td style="font-family: 华文行楷; font-size: xx-large; color: #993300; text-align: center;">
                添加朋友界面</td>
        </tr>
    </table>
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2" style="text-align: right">
                朋友姓名：</td>
            <td class="style3">
                <asp:TextBox ID="TextBox1" runat="server" Height="33px" Width="174px" 
                    ToolTip="姓名"></asp:TextBox>
            &nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2" style="text-align: right">
                性别：</td>
            <td class="style3">
                <asp:CheckBoxList ID="CheckBoxList1" runat="server" 
                    RepeatDirection="Horizontal" >
                    <asp:ListItem>女</asp:ListItem>
                    <asp:ListItem>男</asp:ListItem>
                </asp:CheckBoxList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                </td>
            <td class="auto-style2" style="text-align: right">
                朋友手机号码：</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox2" runat="server" Height="33px" Width="174px" 
                    ToolTip="11位手机号码"></asp:TextBox>
&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                    ControlToValidate="TextBox2" ErrorMessage="请输入11位手机号码" ForeColor="Red"
                    ValidationExpression="(\(\d{3}\)|\d{3}-)?\d{11}" SetFocusOnError="True"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style1">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2" style="text-align: right">
                朋友电子邮件：</td>
            <td class="style3">
                <asp:TextBox ID="TextBox3" runat="server" Height="33px" Width="174px" 
                    ToolTip="邮箱号码"></asp:TextBox>
&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="输入自己的邮箱号码" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <br />
                <asp:Button ID="Button1" runat="server" Height="33px" Text="添加" Width="68px" 
                    onclick="Button1_Click" />
&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Height="33px" Text="清空" Width="68px" 
                    onclick="Button2_Click" />
&nbsp;&nbsp;&nbsp;<asp:Button ID="Button3" runat="server" Height="33px" Text="返回" Width="68px" 
                    onclick="Button3_Click" PostBackUrl="~/登录首页.aspx" ToolTip="返回" />
&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <br />
</div>
</asp:Content>


