<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SCfrienfxinxi.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Label ID="Label3" runat="server" Text="删除信息"></asp:Label>
<asp:GridView ID="GridView1" runat="server" Height="244px" Width="1067px" AutoGenerateColumns="False" DataKeyNames="Friendname" DataSourceID="SqlDataSource1" style="margin-left: 67px; margin-top: 39px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" AllowPaging="True" AllowSorting="True">
    <Columns>
        <asp:BoundField DataField="Friendname" HeaderText="姓名" ReadOnly="True" SortExpression="Friendname" />
        <asp:BoundField DataField="Friendnum" HeaderText="电话号码" SortExpression="Friendnum" />
        <asp:BoundField DataField="Friendemail" HeaderText="电子邮件" SortExpression="Friendemail" />
        <asp:BoundField DataField="Friendpsd" HeaderText="手机号码" SortExpression="Friendpsd" />
        <asp:BoundField DataField="Friendsex" HeaderText="性别" SortExpression="Friendsex" />
        <asp:CommandField HeaderText="操作" ShowDeleteButton="True" ShowEditButton="True" >
        <ControlStyle Font-Underline="False" />
        </asp:CommandField>
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:managetelepConnectionString %>" DeleteCommand="DELETE FROM [Friendtelephone1] WHERE [Friendname] = @original_Friendname AND [Friendnum] = @original_Friendnum AND [Friendemail] = @original_Friendemail AND [Friendpsd] = @original_Friendpsd AND [Friendsex] = @original_Friendsex" InsertCommand="INSERT INTO [Friendtelephone1] ([Friendname], [Friendnum], [Friendemail], [Friendpsd], [Friendsex]) VALUES (@Friendname, @Friendnum, @Friendemail, @Friendpsd, @Friendsex)" SelectCommand="SELECT * FROM [Friendtelephone1]" UpdateCommand="UPDATE [Friendtelephone1] SET [Friendnum] = @Friendnum, [Friendemail] = @Friendemail, [Friendpsd] = @Friendpsd, [Friendsex] = @Friendsex WHERE [Friendname] = @original_Friendname AND [Friendnum] = @original_Friendnum AND [Friendemail] = @original_Friendemail AND [Friendpsd] = @original_Friendpsd AND [Friendsex] = @original_Friendsex" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
    <DeleteParameters>
        <asp:Parameter Name="original_Friendname" Type="String" />
        <asp:Parameter Name="original_Friendnum" Type="String" />
        <asp:Parameter Name="original_Friendemail" Type="String" />
        <asp:Parameter Name="original_Friendpsd" Type="String" />
        <asp:Parameter Name="original_Friendsex" Type="String" />
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
        <asp:Parameter Name="original_Friendname" Type="String" />
        <asp:Parameter Name="original_Friendnum" Type="String" />
        <asp:Parameter Name="original_Friendemail" Type="String" />
        <asp:Parameter Name="original_Friendpsd" Type="String" />
        <asp:Parameter Name="original_Friendsex" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

