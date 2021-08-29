<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_login.aspx.cs" Inherits="Blood_Donor_Portal.Admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Admin Login</title>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="style.css" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@600&display=swap"
      rel="stylesheet"
    />
    <script src="https://kit.fontawesome.com/a81368914c.js"></script>
</head>
<body>
    <img class="wave" src="Img/wave.png"/>
    <div class="container">
      <div class="img">
        <img src="Img/admin1.svg" />
      </div>
      <div class="login-container">
        <form autocomplete="off" id="form1" runat="server">
          <img class="avatar" src="Img/avatar.svg" />
          <h2>Welcome</h2>
          <div class="input-div one">
            <div class="i">
              <i class="fas fa-user"></i>
            </div>
            <div id="uname">
              <h5>Username</h5>
              <asp:TextBox ID="uname" class="input" runat="server" required></asp:TextBox>
            </div>
          </div>
          <div class="input-div two">
            <div class="i">
              <i class="fas fa-lock"></i>
            </div>
            <div>
              <h5>Password</h5>
              <asp:TextBox ID="pwd" class="input" type="password" runat="server" required></asp:TextBox>
              <i id="eye" class="fas fa-eye" onclick="toggle_eye()"></i>
            </div>
          </div>
   <asp:Button ID="loginbtn" class="btn" runat="server" Text="Login" OnClick="loginbtn_Click" />
        </form>
      </div>
    </div>
    <script src="login.js"></script>
</body>
</html>
