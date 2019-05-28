<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CKfriendxinxi0.aspx.cs" Inherits="CKfriendxinxi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 479px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
    <table class="style1">
        <tr>
            <td style="font-family: 华文行楷; font-size: xx-large; color: #993300; text-align: center;">
                通过手机号码查询朋友信息</td>
        </tr>
    </table>
    <table class="style1">
        <tr>
            <td class="style2" 
                style="font-size: xx-large; font-family: 楷体; text-align: right;">
                输入手机号码：</td>
            <td style="font-size: xx-large; font-family: 楷体; text-align: left;">
                <asp:TextBox ID="TextBox1" runat="server" Height="19px" Width="157px" 
                    style="text-align: left" ToolTip="输入要查询的手机号码"></asp:TextBox>
                &nbsp;
                <asp:Button ID="Button1" runat="server" Height="28px" Text="搜索" Width="65px" 
                    onclick="Button1_Click" />
            &nbsp;<asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label>
            &nbsp;</td>
        </tr>
    </table>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
            GridLines="None" Width="1261px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    <br />
    <br />
</div>
</asp:Content>

