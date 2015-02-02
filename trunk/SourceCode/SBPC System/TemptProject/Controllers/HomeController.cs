using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TemptProject.Models;
using System.Diagnostics;
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
        public ActionResult Login(string txtEmail, string txtPassword)
        {

            // Get value of checkbox.
            string chkRememberMe = Request.Form["chkRememberMe"];
            bool remember = chkRememberMe!=null?true:false;
            

            // Query user.
            Context context = new Context();
            User user = context.CheckLogin(txtEmail, txtPassword);
            if (user != null)
            {

                // Remember user email if checkbox is checked.
                // Save user's fullname and role to session.
                FormsAuthentication.SetAuthCookie(txtEmail, remember);
                Session["LogedUserName"] = user.FullName;
                Session["LogedUserRole"] = user.Role;

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
            return Redirect("Index");

        }
    }
}
