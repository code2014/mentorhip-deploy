using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
namespace mono
{
    /// <summary>
    /// Summary description for imgHandler
    /// </summary>
    public class imgHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string imageid = context.Request.QueryString["imID"];
            string sql = "select image from images where idimages= ?imgID";
            MySqlParameter[] p = new MySqlParameter[1];
            p[0] = new MySqlParameter("?imgID", MySqlDbType.Int32);
            p[0].Value = int.Parse(imageid);
            Byte[] dr = MySqlDBUtil.ReadBinary(sql, p);
            context.Response.BinaryWrite(dr);
            context.Response.End();
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}