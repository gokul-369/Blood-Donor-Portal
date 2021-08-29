using System;
using System.Configuration;
using System.Data.SqlClient;
using Blood_Donor_Portal_BL;

namespace Blood_Donor_Portal
{
    
    public partial class login : System.Web.UI.Page
    {
        LoginAndSignup obj = new LoginAndSignup();
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["User"] = null;
        }

        protected void loginbtn_Click(object sender, EventArgs e)
        {                                
            bool LegitUser = obj.ValidateLogin(uname.Text, pwd.Text);
            if (LegitUser)
            {
                Session["User"] = uname.Text;
                Response.Redirect("Home.aspx");
            }

            else
            {
                RegisterStartupScript("s", "<script> alert('Invalid login credentials check your username and password once again')</script>");
                uname.Text = "";
                pwd.Text = "";
            }
        }
    }
}