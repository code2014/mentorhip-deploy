using System;
using System.Web;
using System.Web.UI.WebControls;

namespace mono
{
    public partial class Site : System.Web.UI.MasterPage
    {
        // cookie

        public string id;
        public string username;
        public string sessionExpired;
        public string pwd;
        //
        private string[] needRedirect = { "ASP.provider_myservices_aspx", "ASP.provider_profile_aspx" };

        protected void Page_Init(object sender, EventArgs e)
        {
            HttpCookie getCookie = HttpContext.Current.Request.Cookies["mentorhip"];

            if (getCookie == null)
            {
                logout.Text = "";
                foreach (var v in needRedirect)
                {
                    if (Page.ToString() == v)
                        Response.Redirect("~/index.aspx");
                }
                return;
            }

            if (getCookie["expire"] == "true")
            {
                loginToken.Text = "Log in";
                loginToken.NavigateUrl = "~/login.aspx";
                return;
            }

            username = getCookie["username"];
            id = getCookie["id"];
            pwd = getCookie["pwd"];

            loginToken.Text = username;
            logout.Text = "Log out";
            loginToken.NavigateUrl = "~/Provider/profile.aspx";
        }


        protected void Page_Load(object sender, EventArgs e)
        {



        }

        protected void logout_Click(object sender, EventArgs e)
        {

            HttpCookie aCookie = new HttpCookie("mentorhip");
            HttpCookie bCookie = new HttpCookie("mh_auth");
            aCookie["expire"] = "true";
            aCookie.Expires = DateTime.Now.AddDays(-1);
            bCookie.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(aCookie);
            Response.Cookies.Add(bCookie);
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }

    }
}

