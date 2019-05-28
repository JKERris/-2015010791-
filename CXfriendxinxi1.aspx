<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CXfriendxinxi1.aspx.cs" Inherits="CXfriendxinxi1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 506px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <table class="style1">
        <tr>
            <td style="font-family: 华文行楷; font-size: xx-large; color: #993300; text-align: center;">
                通过姓名查询朋友信息</td>
        </tr>
    </table>
    <table class="style1">
        <tr>
            <td class="style2" 
                style="font-size: x-large; font-family: 楷体; text-align: right;">
                输入朋友姓名：</td>
            <td style="font-size: x-large; font-family: 楷体">
                <asp:TextBox ID="TextBox1" runat="server" Height="18px" Width="150px" 
                    ToolTip="输入要查询的姓名"></asp:TextBox>
                &nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Height="28px" Text="搜索" Width="67px" 
                    onclick="Button1_Click" />
            &nbsp;<asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" 
        style="text-align: center" Width="1265px" 
            Height="35px" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" ForeColor="#333333">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#594B9C" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#33276A" />
    </asp:GridView>
    <br />
    <br />
    <br />
</div>
</asp:Content>

