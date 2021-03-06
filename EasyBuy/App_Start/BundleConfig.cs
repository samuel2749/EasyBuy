﻿using System.Web;
using System.Web.Optimization;

namespace EasyBuy
{
    public class BundleConfig
    {
        // 如需「搭配」的詳細資訊，請瀏覽 http://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            #region css
            bundles.Add(new StyleBundle("~/Content/common").Include(
                        "~/css/reset.css",
                        "~/css/common.css"));
            bundles.Add(new StyleBundle("~/Content/account").Include(
                        "~/css/account.css"));
            #endregion

            #region js
            bundles.Add(new ScriptBundle("~/bundles/common").Include(
                        "~/js/lib/vue.js",
                        "~/js/lib/vue-http-loader.js",
                        "~/Scripts/jquery-{version}.js",
                        "~/js/lib/vue-twzipcode.min.js",
                        "~/js/common.js",
                        "~/js/global.js",
                        "~/js/fun.js"));
            bundles.Add(new ScriptBundle("~/bundles/supplier").Include(
                        "~/js/supplier.js"));
            bundles.Add(new ScriptBundle("~/bundles/product").Include(
                        "~/js/product.js"));
            bundles.Add(new ScriptBundle("~/bundles/inpage").Include(
                        "~/js/inpage.js"));
            #endregion

            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-{version}.js"));

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                        "~/Scripts/jquery.validate*"));

            // 使用開發版本的 Modernizr 進行開發並學習。然後，當您
            // 準備好實際執行時，請使用 http://modernizr.com 上的建置工具，只選擇您需要的測試。
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                      "~/Scripts/bootstrap.js",
                      "~/Scripts/respond.js"));

            bundles.Add(new StyleBundle("~/Content/css").Include(
                      "~/Content/bootstrap.css",
                      "~/Content/site.css"));
        }
    }
}
