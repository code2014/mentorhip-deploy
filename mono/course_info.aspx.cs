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
            var ds = MySqlDBUtil.ExecuteQuery("select name, description,line1,line2,zipcode,city,state, image_id from service where idservice=?id",p);
            name.Text = ds.Tables[0].Rows[0]["name"].ToString();
            address.Text = ds.Tables[0].Rows[0]["line1"].ToString() + ds.Tables[0].Rows[0]["line2"].ToString() + ds.Tables[0].Rows[0]["zipcode"].ToString()
                + ds.Tables[0].Rows[0]["city"].ToString() + ds.Tables[0].Rows[0]["state"].ToString();
            description.Text = ds.Tables[0].Rows[0]["description"].ToString();
            Image1.ImageUrl = "~/imgHandler.ashx?imID=" + ds.Tables[0].Rows[0]["image_id"];
        }


	}
}

