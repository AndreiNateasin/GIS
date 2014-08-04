using System.Collections.Generic;
using System.Linq;

namespace GIS.Dto
{
    public class SimpleConsumerDto
    {
        public SimpleConsumerDto()
        {
            Locations = new List<LocationDto>();
            TypeImage = new byte[] { };
            Image = new byte[] { };
        }

        public string ConsumerType { get; set; }

        public string ConsumerName { get; set; }

        public byte[] Image { get; set; }

        public byte[] TypeImage { get; set; }

        public IEnumerable<LocationDto> Locations { get; set; }

        public List<InfoLink> InfoLinks { get; set; }

        public LocationDto StartLocation
        {
            get
            {
                return Locations.Any() ? Locations.First() : new LocationDto();
            }
        }
    }
}