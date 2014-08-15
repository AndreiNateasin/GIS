using System.Collections.Generic;
using GIS.Dto;
using System.Linq;

namespace GIS.Models.Home
{
    public class ConsumersModel
    {
        public ConsumersModel()
        {
            CityConsumers = new List<ConsumerDto>();
            WireConsumers = new List<ElectricLineDto>();
        }

        public List<ConsumerDto> CityConsumers { get; set; }
        public List<ElectricLineDto> WireConsumers { get; set; }

        public ConsumerDto FirstConsumer
        {
            get
            {
                return CityConsumers.Any() ? CityConsumers.First() : new ConsumerDto();
            }
        }
    }
}