<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Blood_Donor_Portal.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Sign up</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="style.css" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@600&display=swap"
      rel="stylesheet"
    />
</head>
<body>
    <asp:Image CssClass="wave" ImageUrl="Img/wave.png" runat="server"/>
    <div class="container">
      <div class="img">
        <img src="Img/bg.svg" />
      </div>
      <div class="login-container">
        <form id="form1" runat="server" method="post" autocomplete="off">
          <img class="avatar" src="Img/avatar.svg" /><h2>Welcome</h2>
          <div class="input-div one">
            <div class="i">
              <i class="fas fa-envelope"></i>
            </div>
            <div>
              <h5>Mail</h5>
                <asp:TextBox ID="mail" type="email" class="input" runat="server" required></asp:TextBox>
                
            </div>
          </div>

          <div class="input-div two">
            <div class="i">
              <i class="fas fa-user"></i>
            </div>
            <div>
              <h5>Username</h5>
                <asp:TextBox ID="uname" class="input" runat="server" required></asp:TextBox>
                 
            </div>
          </div>
          <div class="input-div three">
            <div class="i">
              <i class="fas fa-lock"></i>
            </div>
            <div>
              <h5>Password</h5>
               <asp:TextBox ID="pwd" class="input" type="password" runat="server" required></asp:TextBox>               
              <i id="eye" class="fas fa-eye" onclick="toggle_eye()"></i>
            </div>
          </div>
          <div class="input-div four">
            <div class="i">
              <i class="fas fa-lock"></i>
            </div>
            <div>
              <h5>Confirm Password</h5>
                <asp:TextBox ID="cpwd" type="password" class="input" runat="server" required></asp:TextBox>
                
              <i id="eye2" class="fas fa-eye" onclick="toggle_eye()"></i>

            </div>
          </div>
           <asp:Button ID="signupbtn" class="btn" runat="server" Text="Sign Up" OnClick="signupbtn_Click" />
          <h3>Already Registered ? then <a href="login.aspx">Login</a></h3>
          <asp:CompareValidator ID="pwdchecker" runat="server" ErrorMessage="Passwords didn't match" ControlToCompare="pwd" ControlToValidate="cpwd" Operator="Equal" Font-Names="Leelawadee UI" ForeColor="#EC5858" Font-Bold="True"></asp:CompareValidator>

            <br />
            <br />

        </form>
      </div>
    </div>
    <script src="https://kit.fontawesome.com/a81368914c.js"></script>
    <script src="signup.js"></script>
    
</body>
</html>
