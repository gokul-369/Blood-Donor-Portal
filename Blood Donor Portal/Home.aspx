<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Blood_Donor_Portal.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Blood Donor Portal</title>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="Home.css"/>
    <style type="text/css">
        .auto-style19 {
            width: 159px;
            height: 41px;
        }
        .auto-style20 {
            height: 41px;
        }
    </style>
</head>
<body>
     <form id="form1" runat="server">
     <section class="home" id="home">

        <header class="header" id="header">
            <div class="logo">
                <a href="home.html" class="img"><img src="Img/logo.svg" alt="logo"></a>
                <a href="home.html">BDP</a>
            </div>
            <div class="nav">
                <nav><a href="#home">Home</a></nav>
                <nav><a href="#search">Search Donor</a></nav>
                <nav><a href="#donor">Be a Donor</a></nav>
                <nav>
                    <asp:Button ID="Button1" class="signout" runat="server" Text="Sign out" OnClick="Button1_Click" />
                </nav>
            </div>
        </header>
         <div class="Homebox">
        <div class="content">
            <h2>Welcome 
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </h2>
            <p>Every Blood donor is a life saver so donate blood and save lives, every drop counts, become a donor today.</p>
            <p>&nbsp;</p>
            <p>
                <asp:Label ID="Label2" runat="server" Text="  "></asp:Label>
                </p>
            <div class="homebtn">
                <br />
                <a href="#donor" class="donor">Donate Now</a>
                <a href="#search" class="search">Need a Donor</a>
            </div>
        </div>
             <div class="img-container">
                 <img src="Img/Homebg.svg" />
             </div>
         </div>
    </section>
    <section class="search-section" id="search">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="srch1">
                    <h3 id="suggtxt">Enter the blood group and location like:</h3>
                    <div class="srch-module"> 
                <asp:TextBox ID="txtblood" runat="server" placeholder="B+ve" AutoCompleteType="Disabled"></asp:TextBox>
                &nbsp;&nbsp;
                <asp:TextBox ID="txtarea" runat="server" placeholder="Mylapore" AutoCompleteType="Disabled"></asp:TextBox>
                <asp:Button ID="btnsrch" runat="server" OnClick="btnsrch_Click" Text="Search" />
                        </div>
                    </div>
                <div class="donor-list">
                <asp:GridView ID="GridView1" runat="server" CellPadding="20" ForeColor="Black" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="3" AllowPaging="True" Width="469px">
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="#e73333" Font-Bold="True" ForeColor="White" Height="25px" HorizontalAlign="Center" VerticalAlign="Middle" Width="150px" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" Height="25px" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                    </div>
            </ContentTemplate>
        </asp:UpdatePanel>
         </section>
    <section id="donor" class="sec3" style="min-height: 100vh;">
        <div class="container">
    <div class="form-container">
        <table style="width: 100%;">
            <tr>
                <td class="auto-style1">
        <asp:Label ID="lblname" runat="server" Text="Name"></asp:Label> </td>
                <td> :&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtname" runat="server" Height="31px" Width="251px" EnableViewState="False"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="rvfname" runat="server" ErrorMessage="Field could not be empty" ForeColor="Red" ControlToValidate="txtname" ValidationGroup="form"></asp:RequiredFieldValidator>
                </td>
                <td> &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">
            <asp:Label ID="lblage" runat="server" Text="Age"></asp:Label></td>
                <td class="auto-style14" colspan="2">:&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtage" runat="server" Height="30px" Width="250px" MaxLength="2" EnableViewState="False" ></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RangeValidator ID="rangevage" runat="server" ControlToValidate="txtage" ErrorMessage="Age must be above 18 and below 55" ForeColor="Red" MaximumValue="55" MinimumValue="18" ValidationGroup="form"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">

            <asp:Label ID="lblgender" runat="server" Text="Gender"></asp:Label>
            &nbsp;</td>
                <td class="auto-style14" colspan="2">:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="rbtmale" runat="server" GroupName="gender" OnCheckedChanged="rbtmale_CheckedChanged" Text="Male" EnableViewState="False" />
&nbsp;
                    <asp:RadioButton ID="rbtfemale" runat="server" GroupName="gender" OnCheckedChanged="rbtfemale_CheckedChanged" Text="Female" EnableViewState="False" />
&nbsp;
                    <asp:RadioButton ID="rbtothers" runat="server" GroupName="gender" OnCheckedChanged="rbtothers_CheckedChanged" Text="Others" EnableViewState="False" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
            <asp:Label ID="lblbloodgroup" runat="server" Text="Blood Group"></asp:Label> 
                </td>
                <td class="auto-style14" colspan="2">
                    :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddlbloodgroup" runat="server" Height="30px" Width="249px" EnableViewState="False">
                <asp:ListItem>--Select--</asp:ListItem>
                <asp:ListItem>A+Ve</asp:ListItem>
                <asp:ListItem>B+Ve</asp:ListItem>
                <asp:ListItem>O+ve</asp:ListItem>
                <asp:ListItem>AB+Ve</asp:ListItem>
                <asp:ListItem>A-Ve</asp:ListItem>
                <asp:ListItem>B-Ve</asp:ListItem>
                <asp:ListItem>O-Ve</asp:ListItem>
                <asp:ListItem>AB-Ve</asp:ListItem>
                <asp:ListItem>Bombay Blood Group</asp:ListItem>
            </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="rvfbloodgroup" runat="server" ControlToValidate="ddlbloodgroup" ErrorMessage="Choose the Blood Group" ForeColor="Red" ValidationGroup="form"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">
            <asp:Label ID="lblmobileno1" runat="server" Text="Mobile Number 1"></asp:Label></td>
                <td class="auto-style17" colspan="2">:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtmobileno1" runat="server" Height="30px" Width="250px" EnableViewState="False"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="rvfmobileno1" runat="server" ControlToValidate="txtmobileno1" ErrorMessage="Field could not be empty" ForeColor="Red" ValidationGroup="form"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtmobileno1" ErrorMessage="Enter a proper phone number format" ForeColor="Red" ValidationExpression="^[36789]\d{9}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
            <asp:Label ID="lblmobileno2" runat="server" Text="Mobile Number 2"></asp:Label></td>
                <td colspan="2">:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtmobileno2" runat="server" Height="30px" Width="250px" EnableViewState="False"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="rvfmobileno2" runat="server" ControlToValidate="txtmobileno2" ErrorMessage="Field could not be empty" ForeColor="Red" ValidationGroup="form"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtmobileno2" ErrorMessage="Enter a proper phone number format" ForeColor="Red" ValidationExpression="^[36789]\d{9}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">
            <asp:Label ID="lblmail" runat="server" Text="E-Mail ID"></asp:Label></td>
                <td colspan="2" class="auto-style20">:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtmail" runat="server" Height="30px" Width="250px" TextMode="Email" EnableViewState="False" ></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="regxmail" runat="server" ControlToValidate="txtmail" ErrorMessage="Mail format is wrong" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="form"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
            <asp:Label ID="lblarea" runat="server" Text="Area"></asp:Label></td>
                <td colspan="2">:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtarea2" runat="server" Height="30px" Width="250px" EnableViewState="False"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="rvfarea" runat="server" ControlToValidate="txtarea2" ErrorMessage="Field could not be empty" ForeColor="Red" ValidationGroup="form"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
            <asp:Label ID="lblpincode" runat="server" Text="Pin Code"></asp:Label></td>
                <td colspan="2">:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtpincode" runat="server" Height="31px" Width="250px" EnableViewState="False"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="rvfpincode" runat="server" ControlToValidate="txtpincode" ErrorMessage="Field could not be empty" ForeColor="Red" ValidationGroup="form">Field could not be empty</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
            <asp:Label ID="lblproof" runat="server" Text="Your ID proof (image)"></asp:Label></td>
                <td class="auto-style11" colspan="2">:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:FileUpload ID="fileuploadproof" runat="server" Height="30px" Width="250px" ForeColor="Black" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="rvffileupload" runat="server" ForeColor="Red" ValidationGroup="form" ControlToValidate="fileuploadproof">Please Attach your ID proof</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                            <asp:Button ID="btregister" runat="server" Text="Be a Donor" OnClick="btregister_Click" ValidateRequestMode="Enabled" ValidationGroup="form" BackColor="#E92323" Font-Bold="True" Font-Names="itim" ForeColor="White" Height="32px" Width="112px" />
                       
                &nbsp;&nbsp;
                       
                          

            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ShowMessageBox="True" ShowSummary="False" ValidationGroup="form" />
                </td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
        </table>
    </div>
</div>
            <h3>If you have any queries mail us   <a href="mailto:admin@gmail.com">here</a></h3>
    </section>


<script src="Home.js"></script>
     </form>
</body>
</html>
