using System;

namespace mono
{
	public partial class index : System.Web.UI.Page
	{

        protected void Page_Load(object sender, EventArgs e)
        {
            Image1.ImageUrl = "~/imgHandler.ashx?imID=4";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/search_provider.aspx");
        }

	}
}

