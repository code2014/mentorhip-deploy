using MySql.Data.MySqlClient;
using System.Web;
using System;
namespace mono
{
	public partial class login : System.Web.UI.Page
	{
        protected void signin_Click(object sender, System.EventArgs e)
        {
            string user = username.Text.Trim();
            string pwd = MD5.getMd5Hash(inputPassword.Text.Trim());
            
            MySqlParameter []param = new MySqlParameter[2];
            param[0] = new MySqlParameter("?pwd", MySqlDbType.VarChar,32);
            param[0].Value = pwd;
            param[1] = new MySqlParameter("?name", MySqlDbType.VarChar, user.Length);
            param[1].Value = user;

            string result = MySqlDBUtil.ExecuteScalar("select password = ?pwd from user where user_name = ?name",param);
            param = new MySqlParameter[1];
            param[0] = new MySqlParameter("?name", MySqlDbType.VarChar, user.Length);
            param[0].Value = user;
            string id = MySqlDBUtil.ExecuteScalar("select iduser from user where user_name = ?name",param);
            if (result == "1")
            {
                // in the future, the id and pwd can be encrypted with DES, each user has its unique key.
                HttpCookie logInfo = new HttpCookie("mentorhip");
                logInfo.Expires = DateTime.Now.AddDays(14d);
                logInfo["username"] = user;
                logInfo["id"] = id;
                logInfo["pwd"] = pwd;
                logInfo["expire"]="false";
                HttpContext.Current.Response.Cookies.Add(logInfo);
                HttpCookie authentication = new HttpCookie("mh_auth");
                authentication["id"] = id;
                authentication["pwd"] = pwd;
                HttpContext.Current.Response.Cookies.Add(authentication);
                Response.Redirect("~/index.aspx", true);
               
            }
            else 
            {
                MessageBox.Show(this, "Please check username or password");
            }
           
        }

        protected void Button1_Click(object sender, System.EventArgs e)
        {
            string name = userName1.Text.Trim(), pwd = MD5.getMd5Hash(pwd0.Text.Trim()), email = mail.Text.Trim();

            string sql = "insert into user (user_name,password,email, create_time, update_time) values (?name,?pwd,?email,now(),now())";
            MySqlParameter[] parameters = new MySqlParameter[3];
            parameters[0] = new MySqlParameter("?name", MySqlDbType.VarChar, name.Length);
            parameters[0].Value = name;
            parameters[1] = new MySqlParameter("?pwd", MySqlDbType.VarChar, pwd.Length);
            parameters[1].Value = pwd;
            parameters[2] = new MySqlParameter("?email", MySqlDbType.VarChar, email.Length);
            parameters[2].Value = email;

            MySqlDBUtil.ExecuteNonQuery(sql, parameters);
            MessageBox.Show(this, "success, we need to redirect to another page.");
        }
    }
}

