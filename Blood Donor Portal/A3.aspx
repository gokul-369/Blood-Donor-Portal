<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel.Master" AutoEventWireup="true" CodeBehind="A3.aspx.cs" Inherits="Blood_Donor_Portal.A3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BDPConnectionString %>" DeleteCommand="DELETE FROM [Donors_WaitingList] WHERE [Waiting_ID] = @Waiting_ID" InsertCommand="INSERT INTO [Donors_WaitingList] ([Name], [Age], [Gender], [Blood_Group], [Mobile_Number_1], [Mobile_Number_2], [Mail], [Area], [Pin_Code], [Proof]) VALUES (@Name, @Age, @Gender, @Blood_Group, @Mobile_Number_1, @Mobile_Number_2, @Mail, @Area, @Pin_Code, @Proof)" SelectCommand="SELECT * FROM [Donors_WaitingList]" UpdateCommand="UPDATE [Donors_WaitingList] SET [Name] = @Name, [Age] = @Age, [Gender] = @Gender, [Blood_Group] = @Blood_Group, [Mobile_Number_1] = @Mobile_Number_1, [Mobile_Number_2] = @Mobile_Number_2, [Mail] = @Mail, [Area] = @Area, [Pin_Code] = @Pin_Code, [Proof] = @Proof WHERE [Waiting_ID] = @Waiting_ID">
        <DeleteParameters>
            <asp:Parameter Name="Waiting_ID" Type="Int32" />
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
            <asp:Parameter Name="Proof" Type="String" />
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
            <asp:Parameter Name="Proof" Type="String" />
            <asp:Parameter Name="Waiting_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BDPConnectionString %>" SelectCommand="SELECT * FROM [Approved_Donors]" DeleteCommand="DELETE FROM [Approved_Donors] WHERE [Donor_ID] = @Donor_ID" InsertCommand="INSERT INTO [Approved_Donors] ([Name], [Age], [Gender], [Blood_Group], [Mobile_Number_1], [Mobile_Number_2], [Mail], [Area], [Pin_Code]) VALUES (@Name, @Age, @Gender, @Blood_Group, @Mobile_Number_1, @Mobile_Number_2, @Mail, @Area, @Pin_Code)" UpdateCommand="UPDATE [Approved_Donors] SET [Name] = @Name, [Age] = @Age, [Gender] = @Gender, [Blood_Group] = @Blood_Group, [Mobile_Number_1] = @Mobile_Number_1, [Mobile_Number_2] = @Mobile_Number_2, [Mail] = @Mail, [Area] = @Area, [Pin_Code] = @Pin_Code WHERE [Donor_ID] = @Donor_ID">
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
    <br />
    
   
    
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Waiting_ID" DataSourceID="SqlDataSource1" ForeColor="Black" Height="350px" Width="345px">
        <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="Waiting_ID" HeaderText="Waiting_ID" InsertVisible="False" ReadOnly="True" SortExpression="Waiting_ID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="Blood_Group" HeaderText="Blood_Group" SortExpression="Blood_Group" />
            <asp:BoundField DataField="Mobile_Number_1" HeaderText="Mobile_Number_1" SortExpression="Mobile_Number_1" />
            <asp:BoundField DataField="Mobile_Number_2" HeaderText="Mobile_Number_2" SortExpression="Mobile_Number_2" />
            <asp:BoundField DataField="Mail" HeaderText="Mail" SortExpression="Mail" />
            <asp:BoundField DataField="Area" HeaderText="Area" SortExpression="Area" />
            <asp:BoundField DataField="Pin_Code" HeaderText="Pin_Code" SortExpression="Pin_Code" />
            <asp:ImageField AccessibleHeaderText="Proof" SortExpression="proof" DataImageUrlField="proof" HeaderText="proof" ControlStyle-Height="170" ControlStyle-Width="215"></asp:ImageField>
            <asp:CommandField ShowDeleteButton="True" />
        </Fields>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
    </asp:DetailsView>
  
    <br />
    <asp:FormView style="margin-left:30px" ID="FormView1" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" CellSpacing="4" DataKeyNames="Donor_ID" DataSourceID="SqlDataSource2" DefaultMode="Insert" GridLines="Horizontal" Height="256px" Width="345px">
        <EditItemTemplate>
            Donor_ID:
            <asp:Label ID="Donor_IDLabel1" runat="server" Text='<%# Eval("Donor_ID") %>' />
            <br />
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            Age:
            <asp:TextBox ID="AgeTextBox" runat="server" Text='<%# Bind("Age") %>' />
            <br />
            Gender:
            <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
            <br />
            Blood_Group:
            <asp:TextBox ID="Blood_GroupTextBox" runat="server" Text='<%# Bind("Blood_Group") %>' />
            <br />
            Mobile_Number_1:
            <asp:TextBox ID="Mobile_Number_1TextBox" runat="server" Text='<%# Bind("Mobile_Number_1") %>' />
            <br />
            Mobile_Number_2:
            <asp:TextBox ID="Mobile_Number_2TextBox" runat="server" Text='<%# Bind("Mobile_Number_2") %>' />
            <br />
            Mail:
            <asp:TextBox ID="MailTextBox" runat="server" Text='<%# Bind("Mail") %>' />
            <br />
            Area:
            <asp:TextBox ID="AreaTextBox" runat="server" Text='<%# Bind("Area") %>' />
            <br />
            Pin_Code:
            <asp:TextBox ID="Pin_CodeTextBox" runat="server" Text='<%# Bind("Pin_Code") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            <div class="flx" style="display:flex;flex-direction:column;">
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" AutoCompleteType="Disabled" Text='<%# Bind("Name") %>' />
            <br />
            Age:
            <asp:TextBox ID="AgeTextBox" runat="server" AutoCompleteType="Disabled" Text='<%# Bind("Age") %>' />
            <br />
            Gender:
            <asp:TextBox ID="GenderTextBox" runat="server" AutoCompleteType="Disabled" Text='<%# Bind("Gender") %>' />
            <br />
            Blood_Group:
            <asp:TextBox ID="Blood_GroupTextBox" runat="server"  AutoCompleteType="Disabled" Text='<%# Bind("Blood_Group") %>' />
            <br />
            Mobile_Number_1:
            <asp:TextBox ID="Mobile_Number_1TextBox" runat="server" AutoCompleteType="Disabled" Text='<%# Bind("Mobile_Number_1") %>' />
            <br />
            Mobile_Number_2:
            <asp:TextBox ID="Mobile_Number_2TextBox" runat="server" AutoCompleteType="Disabled" Text='<%# Bind("Mobile_Number_2") %>' />
            <br />
            Mail:
            <asp:TextBox ID="MailTextBox" runat="server" AutoCompleteType="Disabled" Text='<%# Bind("Mail") %>' />
            <br />
            Area:
            <asp:TextBox ID="AreaTextBox" runat="server" AutoCompleteType="Disabled" Text='<%# Bind("Area") %>' />
            <br />
            Pin_Code:
            <asp:TextBox ID="Pin_CodeTextBox" runat="server" AutoCompleteType="Disabled" Text='<%# Bind("Pin_Code") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
             </div>
        </InsertItemTemplate>
        <InsertRowStyle HorizontalAlign="Left" VerticalAlign="Middle" />
        <ItemTemplate>
            Donor_ID:
            <asp:Label ID="Donor_IDLabel" runat="server" Text='<%# Eval("Donor_ID") %>' />
            <br />
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            Age:
            <asp:Label ID="AgeLabel" runat="server" Text='<%# Bind("Age") %>' />
            <br />
            Gender:
            <asp:Label ID="GenderLabel" runat="server" Text='<%# Bind("Gender") %>' />
            <br />
            Blood_Group:
            <asp:Label ID="Blood_GroupLabel" runat="server" Text='<%# Bind("Blood_Group") %>' />
            <br />
            Mobile_Number_1:
            <asp:Label ID="Mobile_Number_1Label" runat="server" Text='<%# Bind("Mobile_Number_1") %>' />
            <br />
            Mobile_Number_2:
            <asp:Label ID="Mobile_Number_2Label" runat="server" Text='<%# Bind("Mobile_Number_2") %>' />
            <br />
            Mail:
            <asp:Label ID="MailLabel" runat="server" Text='<%# Bind("Mail") %>' />
            <br />
            Area:
            <asp:Label ID="AreaLabel" runat="server" Text='<%# Bind("Area") %>' />
            <br />
            Pin_Code:
            <asp:Label ID="Pin_CodeLabel" runat="server" Text='<%# Bind("Pin_Code") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
    </asp:FormView>


</asp:Content>
