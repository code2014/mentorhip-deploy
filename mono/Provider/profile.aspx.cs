using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.IO;


namespace mono
{
    public partial class profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Image1.ImageUrl = "~/imgHandler.ashx?imID=" + MySqlDBUtil.ExecuteScalar("select img_id from user where iduser = " + Master.id); ;
        }

        protected void ChangePassword_Click(object sender, EventArgs e)
        {
            int id = 5;
            string new_pass = pwd0.Text;
            string sql = "update user set password =?pwd where iduser = ?id;";
            MySqlParameter []p= new MySqlParameter[2];
            p[0] = new MySqlParameter("?pwd", MySqlDbType.VarChar, 32);
            p[0].Value = MD5.getMd5Hash(new_pass);
            p[1] = new MySqlParameter("?id", MySqlDbType.Int32);
            p[0].Value = id;
            MySqlDBUtil.ExecuteNonQuery(sql, p);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int imgLen = FileUpload1.PostedFile.ContentLength;
            if (imgLen > 500*1024) { 
                MessageBox.Show(this,"File should be no larger than 500KB");
                return;
            } 
            
            Stream imgStream = FileUpload1.PostedFile.InputStream;
            byte[] imgBinaryData = new byte[imgLen];
            int n = imgStream.Read(imgBinaryData, 0, imgLen);

            MySqlParameter[] p = new MySqlParameter[2];
            p[0] = new MySqlParameter("?data", MySqlDbType.Blob, n);
            p[0].Value = imgBinaryData;
            p[1] = new MySqlParameter("?title", MySqlDbType.VarChar, 4);
            p[1].Value = "test";
            string sql = "insert into images (image, title) values (?data, ?title)";
            int imgid = MySqlDBUtil.ExecuteInsert(sql, p);
            
            string update = "update user set img_id =?imgid where iduser=?id";
            p[0] = new MySqlParameter("?imgid", MySqlDbType.Int32);
            p[0].Value = imgid;
            p[1] = new MySqlParameter("?id", MySqlDbType.Int32);
            p[1].Value = int.Parse(Master.id);
            MySqlDBUtil.ExecuteNonQuery(update, p);
        }
    }
}