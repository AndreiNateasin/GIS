using System.Collections.Generic;
using System.Linq;

namespace GIS.Dto
{
    public class ElectricLineDto
    {
        public ElectricLineDto()
        {
            Locations = new List<LocationDto>();
            Image = new byte[] { };
        }

        public string ConsumerName { get; set; }

        public byte[] Image { get; set; }

        public int Capacity { get; set; }

        public IEnumerable<LocationDto> Locations { get; set; }
    }
}