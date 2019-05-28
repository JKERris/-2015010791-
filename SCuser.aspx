<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SCuser.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 删除用户信息<asp:GridView ID="GridView1" runat="server" Height="224px" Width="888px" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Uname" DataSourceID="SqlDataSource1" style="margin-left: 292px; margin-top: 87px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
    <Columns>
        <asp:BoundField DataField="Uname" HeaderText="用户名" ReadOnly="True" SortExpression="Uname" />
        <asp:BoundField DataField="Upsd" HeaderText="用户密码" SortExpression="Upsd" />
        <asp:BoundField DataField="Uproblem" HeaderText="用户问题" SortExpression="Uproblem" />
        <asp:BoundField DataField="Uanswer" HeaderText="用户答案" SortExpression="Uanswer" />
        <asp:CommandField HeaderText="操作" ShowDeleteButton="True" ShowEditButton="True" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:managetelepConnectionString %>" DeleteCommand="DELETE FROM [userss] WHERE [Uname] = @Uname" InsertCommand="INSERT INTO [userss] ([Uname], [Upsd], [Uproblem], [Uanswer]) VALUES (@Uname, @Upsd, @Uproblem, @Uanswer)" SelectCommand="SELECT * FROM [userss]" UpdateCommand="UPDATE [userss] SET [Upsd] = @Upsd, [Uproblem] = @Uproblem, [Uanswer] = @Uanswer WHERE [Uname] = @Uname">
    <DeleteParameters>
        <asp:Parameter Name="Uname" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Uname" Type="String" />
        <asp:Parameter Name="Upsd" Type="String" />
        <asp:Parameter Name="Uproblem" Type="String" />
        <asp:Parameter Name="Uanswer" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Upsd" Type="String" />
        <asp:Parameter Name="Uproblem" Type="String" />
        <asp:Parameter Name="Uanswer" Type="String" />
        <asp:Parameter Name="Uname" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

