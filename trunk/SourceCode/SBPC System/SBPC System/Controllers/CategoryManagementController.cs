using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SBPC_System.Controllers
{
    public class CategoryManagementController : Controller
    {
        //
        // GET: /CategoryManagement/

        public ActionResult CategoryManagement()
        {
            return View();
        }

        public ActionResult RedirectToAddCategory()
        {
            return Redirect("AddCategory");
        }

        public ActionResult AddCategory()
        {
            return View();
        }
    }
}
