using System;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Blood_Donor_Portal
{
    public partial class Reset : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        string guidvalue;
        int uid;
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                guidvalue = Request.QueryString["uid"];
                if(guidvalue != null)
                {
                    SqlCommand cmd = new SqlCommand("select * from ForgetPassRequest where ID='"+guidvalue+"'",con);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    sda.Fill(dt);
                    if (dt.Rows.Count != 0)
                    {
                        uid = Convert.ToInt32(dt.Rows[0][1]);
                    }
                    else
                    {
                        Label4.Text = "Invalid Link";

                    }
                }
                else
                {
                    Response.Redirect("login.aspx");
                }
            }
            if (!IsPostBack)
            {
                if (dt.Rows.Count != 0)
                {
                    TextBox1.Visible = true;
                    TextBox2.Visible = true;
                    Label1.Visible = true;
                    Label2.Visible = true;
                    Label3.Visible = true;
                    Button1.Visible = true;
                }
                else
                {
                    Label4.Text = "Invalid Link";
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text!="" && TextBox2.Text!="" && TextBox1.Text==TextBox2.Text)
            { 
            using (SqlConnection con = new SqlConnection(constr))
            {
                SqlCommand cmd = new SqlCommand("update Users set Password ='" + TextBox1.Text + "' where User_ID ='" + uid + "'", con);
                con.Open();
                cmd.ExecuteNonQuery();
                SqlCommand cmd1 = new SqlCommand("delete from ForgetPassRequest where User_ID='" + uid + "'", con);
                cmd1.ExecuteNonQuery();
                Response.Redirect("login.aspx");

            }
        }

        }
    }
}