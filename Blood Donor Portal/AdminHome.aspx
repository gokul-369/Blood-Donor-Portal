<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="Blood_Donor_Portal.AdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<html>
    <head>
        <title></title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Handlee:wght@400;600&family=Itim&display=swap');
body{
    display:flex;
    align-items:center;
    justify-content:space-between;
}
    
h1,p{
    color:#f32626;
    font-family:handlee,cursive;
    }
p{
    font-size:19px;
    font-family:Itim,cursive;
    color:#635e5e
}
.txt{
    height:100px;
    width:550px;
    display:flex;
    flex-direction:column;
    align-items:flex-start;
    justify-content:space-around;
}
.img img{
    height:300px;
    width:300px;
}
</style>
    </head>
    <body>
        <div class="txt">
        <h1>Welcome to the admin dashboard</h1>
        <p>Here you have the previlage to review the proofs of potential donors and add them to the donor table and reset the password for the user on request.</p>
         </div>
        <div class="img">
            <img src="Img/admin2.svg" />
        </div>
    </body>
    </html>
</asp:Content>
