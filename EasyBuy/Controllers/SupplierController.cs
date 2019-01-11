using EasyBuy.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace EasyBuy.Controllers
{
    public class SupplierController : Controller
    {
        // GET: Supplier
        public ActionResult Index()
        {
            return View();
        }

        // GET: Supplier/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Supplier/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Supplier/Create
        [HttpPost]
        public ActionResult Create(SupplierViewModels model)
        {
            var data = new ResponseModels();
            try
            {
                // TODO: Add insert logic here
                EasyBuyEntities db = new EasyBuyEntities();
                var checkSupplier = db.Suppliers.Where(p => p.Name == model.Name).FirstOrDefault();
                if (checkSupplier == null)
                {
                    Models.Supplier supplier = new Models.Supplier
                    {
                        Name = model.Name,
                        Phone = model.Phone,
                        City = model.City,
                        Area = model.Area,
                        Address = model.Address
                    };
                    db.Suppliers.Add(supplier);
                    db.SaveChanges();
                    data.result = 1;
                }
                else
                {
                    data.msg = "該廠商已存在，請重新建立。";
                }
            }
            catch(Exception e)
            {
                data.msg = e.Message;
            }
            return Json(data, JsonRequestBehavior.AllowGet);
        }

        // GET: Supplier/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Supplier/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Supplier/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Supplier/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
