using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Text;


namespace Blood_Donor_Portal_BL
{
    public class LoginAndSignup
    {
        public LoginAndSignup() { }

        public bool ExistingUser(string mail)
        {
            bool Already_A_Member;
            string srch_qry = "Select Mail from Users where Mail='" + mail.Trim() + "'";
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand(srch_qry, con);
            try
            {
                con.Open();
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.HasRows)
                {
                    Already_A_Member = true;
                }
                else
                {
                    Already_A_Member = false;
                }
                return Already_A_Member;
            }
            catch (Exception e)
            {
                throw e;
            }

            finally
            {
                con.Close();
                cmd.Dispose();
                con.Dispose();
            }

        }

        public void NewUserRegistraion(string mail, string uname, string pwd)
        {
            string ins_qry = "insert into Users values ('" + mail.Trim() + "','" + uname.Trim() + "','" + pwd.Trim() + "')";
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand(ins_qry, con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception e)
            {
                throw e;
            }

            finally
            {
                con.Close();
                cmd.Dispose();
                con.Dispose();
            }
        }

        public bool ValidateLogin(string uid, string pass)
        {
            bool LegitUser = false;
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            string val_qry = "select * from Users where Username='" + uid.Trim() + "' and Password ='" + pass.Trim() + "'";
            SqlCommand cmd = new SqlCommand(val_qry, con);
            try
            {
                con.Open();
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.HasRows)
                {
                    LegitUser = true;
                }
                else
                {
                    LegitUser = false;
                }
                return LegitUser;
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                con.Close();
                cmd.Dispose();
                con.Dispose();
            }

        }

        public bool Validatefrgpwd(string uname,string mail)
        {
            bool TrustUser = false;
            string qry = "select * from Users where Username='"+uname+"' and Mail='"+mail+"'";
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand(qry,con);
            try
            {
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                
                if (dt.Rows.Count !=0)
                {
                    TrustUser = true;
                    string myguid = Guid.NewGuid().ToString();
                    int uid = Convert.ToInt32(dt.Rows[0][0]);
                    SqlCommand cmd1 = new SqlCommand("insert into ForgetPassRequest values('"+myguid+"','"+uid+"',getdate())",con);
                    cmd1.ExecuteNonQuery();

                    MailMessage mailmessage = new MailMessage("Youremail@gmail.com", mail);
                    StringBuilder body = new StringBuilder();
                    body.Append("Hey," + uname + ",<br /><br />");
                    body.Append("Here is your link to reset your password");
                    body.Append("<br />");
                    body.Append("https://localhost:44338/Reset.aspx?uid=" +myguid);

                    mailmessage.IsBodyHtml = true;
                    mailmessage.Body = body.ToString();
                    mailmessage.Subject = "Reset your password";
                    SmtpClient smtpclient = new SmtpClient("smtp.office365.com", 587);

                    smtpclient.Credentials = new System.Net.NetworkCredential()
                    {
                        UserName = "Youremail@gmail.com",
                        Password = "pwd"
                    };
                    smtpclient.EnableSsl = true;
                    smtpclient.Send(mailmessage);

                }

                return TrustUser;
            }


            catch (Exception e)
            {
                throw e;
            }

            finally
            {
                con.Close();
                con.Dispose();
                cmd.Dispose();
                
            }

        }

        public void Sendmail(string uname, string mail, string uid)
        {
            

        }

        public bool ValidateAdmin(string uid,string pass)
        {
            bool LegitAdmin = false;
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            string val_qry = "select * from Admins where Name='" + uid.Trim() + "' and Password ='" + pass.Trim() + "'";
            SqlCommand cmd = new SqlCommand(val_qry, con);
            try
            {
                con.Open();
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.HasRows)
                {
                    LegitAdmin = true;
                }
                else
                {
                    LegitAdmin = false;
                }
                return LegitAdmin;
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                con.Close();
                cmd.Dispose();
                con.Dispose();
            }
        }


        public DataSet SearchDonor(string bgroup, string  area)
        {
            string srchqry = "select Name AS Name,Age AS Age,Gender  AS Gender,Blood_Group,Mobile_Number_1 AS Phno1,Mobile_Number_2 AS Phno2,Mail,Area,Pin_Code AS PIN_Code from Approved_Donors where Blood_Group='"+bgroup.Trim()+"' and Area='"+area.Trim()+"'";
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand(srchqry, con);
            try
            {
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                con.Close();
                cmd.Dispose();
                con.Dispose();
            }
        }

        public bool checktable(string mobile1)
        {
            bool exist = false;
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            string qry = "select * from Donors_WaitingList where Mobile_Number_1='" + mobile1.Trim() + "'";
            SqlCommand cmd = new SqlCommand(qry, con);
            try
            {
                con.Open();
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.HasRows)
                {
                    exist = true;
                }
                else
                {
                    exist = false;
                }
                return exist;
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                con.Close();
                cmd.Dispose();
                con.Dispose();
            }
        }


        public void getDonorData(string ins_qury)
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand(ins_qury, con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception er)
            {
                throw er;
            }
            finally
            {
                con.Close();
                cmd.Dispose();
                con.Dispose();
            }
        }
    }
}
