using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace EasyBuy
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");
            #region 關於我們
            routes.MapRoute(
                name: "about",
                url: "about",
                defaults: new { controller = "Home", action = "About" }
            );
            #endregion
            #region 聯絡我們
            routes.MapRoute(
                name: "contact",
                url: "contact",
                defaults: new { controller = "Home", action = "Contact" }
            );
            #endregion
            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );
        }
    }
}
