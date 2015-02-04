using SBPC_System.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

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
        public ActionResult Index(Account account)
        {
            // Get value of checkbox.
            string chkRememberMe = Request.Form["chkRememberMe"];
            bool isRemember = chkRememberMe != null ? true : false;


            // Query user
            SBPCDbContext dbContext = new SBPCDbContext();
            Account user = (Account)dbContext.Accounts.Select(x => x.Email == account.Email && x.Password == account.Password);
            if (user != null)
            {
                // Remember user email if checkbox is checked.
                FormsAuthentication.SetAuthCookie(account.Email, isRemember);

                // Redirect.
                if (user.Role.Equals("Admin"))
                {
                    return RedirectToAction("Dashboard", "Dashboard", new { area = "Admin" });
                }
                else
                {
                    return RedirectToAction("SiteManagement", "Profile", new { area = "User" });
                }
            }
            else
            {
                ViewBag.Msg = "Invalid User";
                return View();
            }
        }
    }
}
