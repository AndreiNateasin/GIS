using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using GIS.Models;
using GIS.Repositories;

namespace GIS.Controllers
{
    public class HomeController : Controller
    {
        private readonly ConsumerRepository _consumerRepository;
        public HomeController()
        {
            _consumerRepository = new ConsumerRepository();
        }

        public ActionResult Index()
        {
            var consumers = _consumerRepository.GetStationConsumers();

            ViewBag.Message = "List of active Consumers";

            return View(consumers);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your app description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}
