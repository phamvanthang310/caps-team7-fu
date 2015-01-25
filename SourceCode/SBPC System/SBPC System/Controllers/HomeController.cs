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
        public ActionResult Login(string txtUsername, string txtPassword)
        {
            if (txtUsername == "admin" && txtPassword == "admin")
            {
                return RedirectToAction("Dashboard", "Dashboard", new { area = "Admin" });
            }
            if (txtUsername == "user" && txtPassword == "user")
            {
                return RedirectToAction("SiteManagement", "Profile", new { area = "User" });
            }
            return Redirect("Index");
        }
    }
}
