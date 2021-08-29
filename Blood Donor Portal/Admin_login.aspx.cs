using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Blood_Donor_Portal_BL;

namespace Blood_Donor_Portal
{
    public partial class Admin_login : System.Web.UI.Page
    {
        LoginAndSignup obj = new LoginAndSignup();
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Admin"] = null;
        }

        protected void loginbtn_Click(object sender, EventArgs e)
        {
            bool LegitAdmin = obj.ValidateAdmin(uname.Text, pwd.Text);
            if (LegitAdmin)
            {
                Session["Admin"] = uname.Text;
                Response.Redirect("AdminHome.aspx");
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