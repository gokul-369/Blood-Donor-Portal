<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel.Master" AutoEventWireup="true" CodeBehind="A1.aspx.cs" Inherits="Blood_Donor_Portal.A1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BDPConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [User_ID] = @User_ID" InsertCommand="INSERT INTO [Users] ([Mail], [Username], [Password]) VALUES (@Mail, @Username, @Password)" SelectCommand="SELECT * FROM [Users]" UpdateCommand="UPDATE [Users] SET [Mail] = @Mail, [Username] = @Username, [Password] = @Password WHERE [User_ID] = @User_ID">
    <DeleteParameters>
        <asp:Parameter Name="User_ID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Mail" Type="String" />
        <asp:Parameter Name="Username" Type="String" />
        <asp:Parameter Name="Password" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Mail" Type="String" />
        <asp:Parameter Name="Username" Type="String" />
        <asp:Parameter Name="Password" Type="String" />
        <asp:Parameter Name="User_ID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="User_ID" DataSourceID="SqlDataSource1" CellPadding="10" ForeColor="Black" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2" Width="625px">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="User_ID" HeaderText="User_ID" InsertVisible="False" ReadOnly="True" SortExpression="User_ID" />
        <asp:BoundField DataField="Mail" HeaderText="Mail" SortExpression="Mail" />
        <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
    </Columns>
    <EditRowStyle Height="4px" HorizontalAlign="Center" VerticalAlign="Middle" />
    <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
    <FooterStyle BackColor="#CCCCCC" />
    <HeaderStyle BackColor="#f32626" Font-Bold="True" ForeColor="White" Height="30px" />
    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
    <RowStyle BackColor="White" Height="33px" HorizontalAlign="Center" VerticalAlign="Middle" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
</asp:Content>
