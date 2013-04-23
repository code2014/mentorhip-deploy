using System;
using MySql.Data.MySqlClient;
namespace mono
{
	public partial class course_info : System.Web.UI.Page
	{

        string courseID;
        protected void Page_Load(object sender, EventArgs e)
        {
            courseID = Request.QueryString["detail"];
            if (courseID == null)
                Response.Redirect("~/index.aspx");
            MySqlParameter []p = new MySqlParameter[1];
            p[0] = new MySqlParameter("?id",MySqlDbType.Int32);
            p[0].Value = int.Parse(courseID);
            var ds = MySqlDBUtil.ExecuteQuery("select name, description,line1,line2,zipcode,city,state, image_id, provider_id from service where idservice=?id",p);
            name.Text = ds.Tables[0].Rows[0]["name"].ToString();
            address.Text = ds.Tables[0].Rows[0]["line1"].ToString() + ds.Tables[0].Rows[0]["line2"].ToString() + ds.Tables[0].Rows[0]["zipcode"].ToString()
                + ds.Tables[0].Rows[0]["city"].ToString() + ds.Tables[0].Rows[0]["state"].ToString();
            description.Text = ds.Tables[0].Rows[0]["description"].ToString();
            Image1.ImageUrl = "~/imgHandler.ashx?imID=" + ds.Tables[0].Rows[0]["image_id"];

            string pid = ds.Tables[0].Rows[0]["provider_id"].ToString();

            string provider_sql = "select img_id, description from user where iduser= ?id";

           // p[0].Value = int.Parse(pid);
            //var ds2 = MySqlDBUtil.ExecuteQuery(provider_sql,p);
            //Image_p.ImageUrl = "~/imgHandler.ashx?imID="+ds2.Tables[0].Rows[0]["img_id"].ToString();
           // p_description.Text = ds2.Tables[0].Rows[0]["description"].ToString();
        }


	}
}

