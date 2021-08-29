using System;
using Blood_Donor_Portal_BL;
using System.Net.Mail;
using System.Text;

namespace Blood_Donor_Portal
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        LoginAndSignup obj = new LoginAndSignup();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string uname = txtfrg_uname.Text;
            string mail = txtfrg_mail.Text;
           bool TrustUser = obj.Validatefrgpwd(uname, mail);

            if (TrustUser)
            {
                Label1.Text = "A mail to reset your password has been sent to your mailid ";
            }
            else
            {
                Label1.Text = "MailId is not registered with our database";
            }

        }

    }
}