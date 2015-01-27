using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SBPC_System.Areas.User.Controllers
{
    public class ProfileController : Controller
    {
        //
        // GET: /User/Profile/

        public ActionResult Profile()
        {
            return View();
        }

        public ActionResult Upgrade()
        {
            return View();
        }

        public ActionResult SiteManagement()
        {
            return View();
        }

        public ActionResult Statistic()
        {
            return View();
        }
    }
}
