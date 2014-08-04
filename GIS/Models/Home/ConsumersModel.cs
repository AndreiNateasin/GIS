using System.Collections.Generic;
using GIS.Dto;
using System.Linq;

namespace GIS.Models.Home
{
    public class ConsumersModel
    {
        public ConsumersModel()
        {
            CityConsumers = new List<SimpleConsumerDto>();
            WireConsumers = new List<SimpleConsumerDto>();
        }

        public List<SimpleConsumerDto> CityConsumers { get; set; }
        public List<SimpleConsumerDto> WireConsumers { get; set; }

        public SimpleConsumerDto FirstConsumer
        {
            get
            {
                return CityConsumers.Any() ? CityConsumers.First() : new SimpleConsumerDto();
            }
        }
    }
}