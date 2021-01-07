using Logistic.Data;
using Logistic.Data.Model;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Diagnostics;
using System.Linq;
using WebLogistics.Models;

namespace WebLogistics.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult About()
        {
            ViewData["Message"] = "Your application description page.";

            return View();
        }

        public IActionResult Contact()
        {
            ViewData["Message"] = "Your contact page.";

            return View();
        }

        public IActionResult Main()
        {
            using (var db = new LogictisContext())
            {
                var lstContainer = (from g in db.DeliveryPlace select g).ToList();
                return View(lstContainer);
            }
        }
        public IActionResult Detail(int id)
        {
            using (var db = new LogictisContext())
            {
                var lstContainer = (from g in db.DeliveryPlace where g.ID.Equals(id) select g).SingleOrDefault();
                return View(lstContainer);
            }
        }
        public IActionResult DeteleDetail(int id)
        {
            using (var db = new LogictisContext())
            {
                var c = db.DeliveryPlace.Where(g => g.ID.Equals(id)).SingleOrDefault();
                db.DeliveryPlace.Remove(c);
                db.SaveChanges();
                var lstContainer = (from g in db.DeliveryPlace select g).ToList();
                return View("Main", lstContainer);
            }
        }
        public IActionResult UpDateDetail(DeliveryPlace model)
        {
            using (var db = new LogictisContext())
            {
                int id = 0;
                var g = db.DeliveryPlace.SingleOrDefault(x => x.ID.Equals(model.ID));
                if (g is null)
                {
                    var n = new DeliveryPlace();
                    n.Name = model.Name;
                    n.Phone = model.Phone;
                    n.Adress = model.Adress;
                    n.CreateDate = DateTime.Now;
                    db.DeliveryPlace.Add(n);
                }
                else
                {
                    id = model.ID;
                    g.Name = model.Name;
                    g.Phone = model.Phone;
                    g.Adress = model.Adress;
                }
                db.SaveChanges();
            }
            return RedirectToAction("Main");
        }

        public IActionResult New(DeliveryPlace model)
        {
            return View("Detail", new DeliveryPlace());
        }
        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
