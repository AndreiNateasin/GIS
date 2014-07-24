using System.Collections.Generic;

namespace GIS.Dto
{
    public class SimpleConsumerDto
    {
        public SimpleConsumerDto()
        {
            Locations = new List<LocationDto>();
        }

        public string ConsumerType { get; set; }

        public IEnumerable<LocationDto> Locations { get; set; }
    }
}