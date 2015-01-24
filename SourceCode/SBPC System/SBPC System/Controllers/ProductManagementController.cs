using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SBPC_System.Controllers
{
    public class ProductManagementController : Controller
    {
        //
        // GET: /ProductManagement/

        public ActionResult ProductManagement()
        {
            return View();
        }
        public ActionResult RedirectToAddProduct()
        {
            return Redirect("AddProduct");

        }

        public ActionResult AddProduct()
        {
            return View();
        }
        
    }
}
