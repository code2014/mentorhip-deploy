using System;
using System.Collections.Generic;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mono
{
    public class MessageBox
    {
        private MessageBox()
        {

        }

        public static void Redirect(string message, string toURL)
        {
            #region
            string js = "<script language=javascript>alert('{0}');window.location.replace('{1}')</script>";
            HttpContext.Current.Response.Write(string.Format(js, message, toURL));
            #endregion
        }

        #region 显示消息提示对话框
        /// <summary>
        /// 显示消息提示对话框
        /// </summary>
        /// <param name="page">当前页面指针，一般为this</param>
        /// <param name="msg">提示信息</param>
        public static void Show(Page page, string msg)
        {
            ClientScriptManager csm = page.ClientScript;
            csm.RegisterStartupScript(page.GetType(), "message", "<script language='javascript' defer>alert('" + msg.ToString() + "');</script>");
        }
        #endregion

        #region 控件点击 消息确认提示框
        /// <summary>
        /// 控件点击 消息确认提示框
        /// </summary>
        /// <param name="msg">提示信息</param>
        public static void ShowConfirm(WebControl Control, string msg)
        {
            //Control.Attributes.Add("onClick","if (!window.confirm('"+msg+"')){return false;}");
            Control.Attributes.Add("onclick", "return confirm('" + msg + "');");
        }
        #endregion

        #region 显示消息提示对话框，并进行页面跳转
        /// <summary>
        /// 显示消息提示对话框，并进行页面跳转
        /// </summary>
        /// <param name="page">当前页面指针，一般为this</param>
        /// <param name="msg">提示信息</param>
        /// <param name="url">跳转的目标URL</param>
        public static void ShowAndRedirect(Page page, string msg, string url)
        {
            ClientScriptManager csm = page.ClientScript;
            StringBuilder Builder = new StringBuilder();
            Builder.Append("<script language='javascript' defer>");
            Builder.AppendFormat("alert('{0}');", msg);
            Builder.AppendFormat("top.location.href='{0}'", url);
            Builder.Append("</script>");
            csm.RegisterStartupScript(page.GetType(), "message", Builder.ToString());

        }
        #endregion
        
        #region 显示消息,跳回上一页
        public static void ShowAndReturnBack(Page page, string msg)
        {
            ClientScriptManager csm = page.ClientScript;
            csm.RegisterStartupScript(page.GetType(), "message", "<script language='javascript' defer>alert('" + msg + "');history.back();</script>");
        }
        #endregion

        #region 输出自定义脚本信息
        /// <summary>
        /// 输出自定义脚本信息
        /// </summary>
        /// <param name="page">当前页面指针，一般为this</param>
        /// <param name="script">输出脚本</param>
        public static void ResponseScript(Page page, string script)
        {
            ClientScriptManager csm = page.ClientScript;
            csm.RegisterStartupScript(page.GetType(), "message", "<script language='javascript' defer>" + script + "</script>");
        }
        #endregion

        #region 显示消息提示对话框，并进行页面跳转
        /// <summary>
        /// 显示消息提示对话框，并进行页面跳转
        /// </summary>
        /// <param name="page">当前页面指针，一般为this</param>
        /// <param name="msg">提示信息</param>
        /// <param name="url">跳转的目标URL</param>
        public static void AlertAndRedirect(Page page, string msg, string url)
        {
            AlertAndRedirect(page, msg, url, true);
        }
        #endregion

        public static void AlertAndRedirect(Page page, string msg, string url, bool istop)
        {
            //ClientScriptManager csm = page.ClientScript;
            StringBuilder Builder = new StringBuilder();
            Builder.Append("<script language='javascript' defer>");
            Builder.AppendFormat("alert('{0}');", msg);
            if (istop)
                Builder.AppendFormat("top.location.href='{0}'", url);
            else
                Builder.AppendFormat("location.href='{0}'", url);

            Builder.Append("</script>");
            //csm.RegisterStartupScript(page.GetType(), "message", Builder.ToString());
            page.Response.Write(Builder.ToString());
            page.Response.End();
        }


        public static void AlertAndReturnBack(Page page, string msg)
        {
            //ClientScriptManager csm = page.ClientScript;
            //csm.RegisterStartupScript(page.GetType(), "message", "<script language='javascript' defer>alert('" + msg + "');history.back();</script>");
            page.Response.Write("<script language='javascript' defer>alert('" + msg + "');history.back();</script>");
            page.Response.End();

        }

        public static void Alert(string message, string toURL)
        {
            #region
            string js = "<script language=javascript>alert('{0}');window.location.replace('{1}')</script>";
            HttpContext.Current.Response.Write(string.Format(js, message, toURL));
            #endregion
        }
    }
}
