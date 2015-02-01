using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SBPC_System.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/

        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(string Username, string Password)
        {
            if (Username == "admin" && Password == "admin")
            {
                return RedirectToAction("Dashboard", "Dashboard", new { area = "Admin" });
            }
            if (Username == "user" && Password == "user")
            {
                return RedirectToAction("SiteManagement", "Profile", new { area = "User" });
            }
            return Redirect("Index");
        }
    }
}
