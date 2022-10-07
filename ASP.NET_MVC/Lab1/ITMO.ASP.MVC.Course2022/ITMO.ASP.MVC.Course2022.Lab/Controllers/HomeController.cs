using ITMO.ASP.MVC.Course2022.Lab.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ITMO.ASP.MVC.Course2022.Lab.Controllers
{
    public class MyController : Controller
    {
        // GET: Home
        //public ActionResult Index()
        //{
        //    return View();
        //}

        public string Index(string hel)
        {
            string Greeting = ModelClass.ModelHello() + ", " + hel; 
            return Greeting;
        }
    }
}