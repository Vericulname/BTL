using BTL.Oject;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace BTL
{
    public class Global : System.Web.HttpApplication
    {

        public const string item = "items";

        private List<items> init()
        {
            return new List<items>
            {
                new items(0,"áo nam trắng","mô tả","ao-nam","img\\items\\ao-nam1.jpg",120, 12),
                new items(1,"áo nam đen","mô tả","ao-nam","img\\items\\ao-nam2.jpg", 12344, 20),
                new items(2,"áo nữ trắng","mô tả","ao-nu","img\\items\\ao-nu1.jpg", 5511, 12),
                new items(3,"áo nữ đen","mô tả","ao-nu","img\\items\\ao-nu2.jpg", 515125, 10),
                new items(4,"điện thoại ipop","mô tả","phone","img\\items\\dien-thoai1.jpg", 12414, 20)

            }; 
        }
        protected void Application_Start(object sender, EventArgs e)
        {
            Application[item] = init();
        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}