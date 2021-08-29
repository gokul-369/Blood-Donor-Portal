<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reset.aspx.cs" Inherits="Blood_Donor_Portal.Reset" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="fomr2">
    <div class="resetcontainer">

        <asp:Label ID="Label1" runat="server" Text="New Password" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Confirm Password" Visible="False"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" Visible="False" />
        <br />
        <br />
        <asp:Label ID="Label4" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>

    </div>
    </div>
    </form>
</body>
</html>
