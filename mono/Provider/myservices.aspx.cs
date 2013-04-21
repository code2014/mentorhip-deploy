using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

namespace mono
{
    public partial class myservices : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet ds =  MySqlDBUtil.ExecuteQuery("select name from category");
            cat.Items.Clear();
     
            for (int i = 0; i < ds.Tables[0].Rows.Count;i++ )
            {
                cat.Items.Add( ds.Tables[0].Rows[i][0].ToString());
            }

            ds = MySqlDBUtil.ExecuteQuery("select idservice, name, description from service ");
           ListView1.DataSource = ds.Tables[0];
           ListView1.DataBind();
        }

        protected void create_Click(object sender, EventArgs e)
        {
            int id = 1;
            string name = title.Text,
                category = cat.Items[cat.SelectedIndex].Text,
                min = min_age.Text, max = max_age.Text,
                tel = phone.Text, url = Url.Text,
                descr = description.Text, l1 = line1.Text, l2 = Line2.Text,
                zip = zipcode.Text, c = city.Text, s = state.Text;
            string sql = "insert into service (provider_id, name,description,min_age, max_age,phone,url,line1,Line2,zipcode,city,state,create_time, update_time) values "+
                "(?id,?name,?descr,?min,?max,?tel,?url,?line1,?line2,?zip,?city,?state, now(), now())";
           MySqlParameter []p = new MySqlParameter[12];
           p[0] = new MySqlParameter("?id",MySqlDbType.Int32);
           p[0].Value = id;
           p[1] = new MySqlParameter("?name",MySqlDbType.VarChar, name.Length);
           p[1].Value = name;
           p[2] = new MySqlParameter("?descr",MySqlDbType.VarChar,descr.Length);
           p[2].Value = descr;
           p[3] = new MySqlParameter("?min",MySqlDbType.Int16);
           p[3].Value = int.Parse(min);
           p[4] = new MySqlParameter("?max", MySqlDbType.Int16);
           p[4].Value = int.Parse(max);
           p[5] = new MySqlParameter("?tel", MySqlDbType.VarChar,tel.Length);
           p[5].Value = tel;
           p[6] = new MySqlParameter("?url", MySqlDbType.VarChar, url.Length);
           p[6].Value = url;
           p[7] = new MySqlParameter("?line1", MySqlDbType.VarChar, l1.Length);
           p[7].Value = l1;
           p[8] = new MySqlParameter("?line2", MySqlDbType.VarChar, l2.Length);
           p[8].Value = l2;
           p[9] = new MySqlParameter("?zip", MySqlDbType.VarChar, zip.Length);
           p[9].Value = zip;
           p[10] = new MySqlParameter("?city", MySqlDbType.VarChar,c.Length);
           p[10].Value = c;
           p[11] = new MySqlParameter("?state", MySqlDbType.VarChar, s.Length);
           p[11].Value = s;

           MySqlDBUtil.ExecuteNonQuery(sql,p);

        }

        protected void del_link_Command(object sender, CommandEventArgs e)
        {
          MessageBox.Show(this, e.CommandArgument.ToString());
          
        }


       
    }
}