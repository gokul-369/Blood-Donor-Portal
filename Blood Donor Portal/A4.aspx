<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel.Master" AutoEventWireup="true" CodeBehind="A4.aspx.cs" Inherits="Blood_Donor_Portal.A4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="5" CellSpacing="3" DataKeyNames="Donor_ID" DataSourceID="SqlDataSource1" ForeColor="Black" Width="804px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Donor_ID" HeaderText="Donor_ID" ReadOnly="True" SortExpression="Donor_ID" InsertVisible="False" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="Blood_Group" HeaderText="Blood_Group" SortExpression="Blood_Group" />
            <asp:BoundField DataField="Mobile_Number_1" HeaderText="Mobile_Number_1" SortExpression="Mobile_Number_1" />
            <asp:BoundField DataField="Mobile_Number_2" HeaderText="Mobile_Number_2" SortExpression="Mobile_Number_2" />
            <asp:BoundField DataField="Mail" HeaderText="Mail" SortExpression="Mail" />
            <asp:BoundField DataField="Area" HeaderText="Area" SortExpression="Area" />
            <asp:BoundField DataField="Pin_Code" HeaderText="Pin_Code" SortExpression="Pin_Code" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="#f32626" Font-Bold="True" ForeColor="White" Height="30px" HorizontalAlign="Center" VerticalAlign="Middle" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" Height="33px" HorizontalAlign="Center" VerticalAlign="Middle" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BDPConnectionString %>" SelectCommand="SELECT * FROM [Approved_Donors]" DeleteCommand="DELETE FROM [Approved_Donors] WHERE [Donor_ID] = @Donor_ID" InsertCommand="INSERT INTO [Approved_Donors] ([Name], [Age], [Gender], [Blood_Group], [Mobile_Number_1], [Mobile_Number_2], [Mail], [Area], [Pin_Code]) VALUES (@Name, @Age, @Gender, @Blood_Group, @Mobile_Number_1, @Mobile_Number_2, @Mail, @Area, @Pin_Code)" UpdateCommand="UPDATE [Approved_Donors] SET [Name] = @Name, [Age] = @Age, [Gender] = @Gender, [Blood_Group] = @Blood_Group, [Mobile_Number_1] = @Mobile_Number_1, [Mobile_Number_2] = @Mobile_Number_2, [Mail] = @Mail, [Area] = @Area, [Pin_Code] = @Pin_Code WHERE [Donor_ID] = @Donor_ID">
        <DeleteParameters>
            <asp:Parameter Name="Donor_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Age" Type="Int32" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Blood_Group" Type="String" />
            <asp:Parameter Name="Mobile_Number_1" Type="String" />
            <asp:Parameter Name="Mobile_Number_2" Type="String" />
            <asp:Parameter Name="Mail" Type="String" />
            <asp:Parameter Name="Area" Type="String" />
            <asp:Parameter Name="Pin_Code" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Age" Type="Int32" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Blood_Group" Type="String" />
            <asp:Parameter Name="Mobile_Number_1" Type="String" />
            <asp:Parameter Name="Mobile_Number_2" Type="String" />
            <asp:Parameter Name="Mail" Type="String" />
            <asp:Parameter Name="Area" Type="String" />
            <asp:Parameter Name="Pin_Code" Type="Int32" />
            <asp:Parameter Name="Donor_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
