using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using Blood_Donor_Portal_BL;


namespace Blood_Donor_Portal
{
    public partial class Home : System.Web.UI.Page
    {
        LoginAndSignup obj = new LoginAndSignup();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["User"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            Label1.Text = Session["User"].ToString();
        }
        

        protected void btnsrch_Click(object sender, EventArgs e)
        {
            DataSet ds = obj.SearchDonor(txtblood.Text,txtarea.Text);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["User"] = null;
            Response.Redirect("Login.aspx");
        }

        string name;
        string age;
        string sex;
        string bloodgroup;
        string mobile_1;
        string mobile_2;
        string mail;
        string area;
        string pincode;

        protected void rbtmale_CheckedChanged(object sender, EventArgs e)
        {
            sex = rbtmale.Text;
        }
        protected void rbtfemale_CheckedChanged(object sender, EventArgs e)
        {
            sex = rbtfemale.Text;
        }

        protected void rbtothers_CheckedChanged(object sender, EventArgs e)
        {
            sex = rbtothers.Text;
        }
        protected void btregister_Click(object sender, EventArgs e)
        {
            name = txtname.Text;
            age = txtage.Text;
            bloodgroup = ddlbloodgroup.SelectedItem.Text;
            mobile_1 = txtmobileno1.Text;
            mobile_2 = txtmobileno2.Text;
            mail = txtmail.Text;
            area = txtarea2.Text;
            pincode = txtpincode.Text;

          string filepath = Path.GetFileName(fileuploadproof.PostedFile.FileName);
            bool exist = obj.checktable(mobile_1);
            if (exist)
            {
                RegisterStartupScript("s", "<script> alert('You have already registered with us please wait till you hear from our admins')</script>");

            }
            else
            {
                if (fileuploadproof.HasFile)
                {
                    fileuploadproof.SaveAs(Server.MapPath("~/proof/" + filepath));
                    string proof = "proof/" + filepath;
                    obj.getDonorData("insert into Donors_WaitingList values('" + name + "'," + age + ",'" + sex + "','" + bloodgroup + "','" + mobile_1 + "','" + mobile_2 + "','" + mail + "','" + area + "'," + pincode + ",'" + proof + "')");
                    Label2.Text = "Your details have been Successfully sent to our database, you will soon hear from us. ";

                    txtname.Text = "";
                    txtage.Text = "";
                    txtarea2.Text = "";
                    txtmail.Text = "";
                    txtmobileno1.Text = "";
                    txtmobileno2.Text = "";
                    txtpincode.Text = "";
                    ddlbloodgroup.ClearSelection();
                    rbtmale.Checked = false;
                    rbtothers.Checked = false;
                    rbtfemale.Checked = false;
                }
            }
        }

    }
}