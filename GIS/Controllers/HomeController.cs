using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using GIS.Dto;
using GIS.Models;
using GIS.Models.Home;
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
            var cityConsumers = _consumerRepository.GetConsumersByType(new List<string> { ConsumerTypes.City, ConsumerTypes.Pump, ConsumerTypes.Factory });
            var networkConsumers = _consumerRepository.GetConsumersByType(new List<string> { ConsumerTypes.ElectricNetwork });

            ViewBag.Message = "List of active Consumers";

            return View(new ConsumersModel
            {
                CityConsumers = cityConsumers,
                WireConsumers = networkConsumers
            });
        }

    }
}
