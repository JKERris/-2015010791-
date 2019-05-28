<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 68px;
            height: 68px;
        }
        .auto-style2 {
            width: 68px;
            height: 72px;
        }
        .auto-style3 {
            height: 72px;
        }
        .auto-style4 {
            width: 68px;
            height: 73px;
        }
        .auto-style5 {
            height: 73px;
        }
        .auto-style6 {
            height: 68px;
        }
        .auto-style7 {
            height: 105px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Friendname" DataSourceID="SqlDataSource1" Height="232px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged2" Width="1010px">
        <Columns>
            <asp:BoundField DataField="Friendname" HeaderText="Friendname" ReadOnly="True" SortExpression="Friendname" />
            <asp:BoundField DataField="Friendnum" HeaderText="Friendnum" SortExpression="Friendnum" />
            <asp:BoundField DataField="Friendemail" HeaderText="Friendemail" SortExpression="Friendemail" />
            <asp:BoundField DataField="Friendpsd" HeaderText="Friendpsd" SortExpression="Friendpsd" />
            <asp:BoundField DataField="Friendsex" HeaderText="Friendsex" SortExpression="Friendsex" />
        </Columns>
    </asp:GridView>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input id="Text1" type="text" />&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input id="Password1" maxlength="12" type="password" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input id="Submit1" type="submit" value="submit" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table style="width:100%;">
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
    </table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
    <div align="center" class="auto-style7" lang="zh-cn" style="line-height: normal; vertical-align: baseline; text-align: left; text-indent: inherit; white-space: normal; word-spacing: normal; letter-spacing: normal; background-color: #FFFF00; background-image: inherit; visibility: visible; display: block; cursor: auto;">
    </div>
    <asp:Menu ID="Menu2" runat="server" StaticSubMenuIndent="16px">
        <Items>
            <asp:MenuItem Text="新建项" Value="新建项"></asp:MenuItem>
            <asp:MenuItem Text="新建项" Value="新建项"></asp:MenuItem>
            <asp:MenuItem Text="新建项" Value="新建项"></asp:MenuItem>
            <asp:MenuItem Text="新建项" Value="新建项"></asp:MenuItem>
            <asp:MenuItem Text="新建项" Value="新建项"></asp:MenuItem>
            <asp:MenuItem Text="新建项" Value="新建项"></asp:MenuItem>
        </Items>
    </asp:Menu>
    &nbsp;<div style="margin-left: 720px">
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" PostBackUrl="~/登录首页.aspx" Text="返回" />
        <br />
        <br />
&nbsp;&nbsp;
        <asp:Label ID="user" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <asp:TextBox ID="Uname" runat="server" ToolTip="用户名"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="Upsd" runat="server" ToolTip="密码"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="login" />
        <br />
    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:managetelepConnectionString2 %>" DeleteCommand="DELETE FROM [Friendtelephone1] WHERE [Friendname] = @Friendname" InsertCommand="INSERT INTO [Friendtelephone1] ([Friendname], [Friendnum], [Friendemail], [Friendpsd], [Friendsex]) VALUES (@Friendname, @Friendnum, @Friendemail, @Friendpsd, @Friendsex)" SelectCommand="SELECT * FROM [Friendtelephone1]" UpdateCommand="UPDATE [Friendtelephone1] SET [Friendnum] = @Friendnum, [Friendemail] = @Friendemail, [Friendpsd] = @Friendpsd, [Friendsex] = @Friendsex WHERE [Friendname] = @Friendname">
        <DeleteParameters>
            <asp:Parameter Name="Friendname" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Friendname" Type="String" />
            <asp:Parameter Name="Friendnum" Type="String" />
            <asp:Parameter Name="Friendemail" Type="String" />
            <asp:Parameter Name="Friendpsd" Type="String" />
            <asp:Parameter Name="Friendsex" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Friendnum" Type="String" />
            <asp:Parameter Name="Friendemail" Type="String" />
            <asp:Parameter Name="Friendpsd" Type="String" />
            <asp:Parameter Name="Friendsex" Type="String" />
            <asp:Parameter Name="Friendname" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </asp:Content>

