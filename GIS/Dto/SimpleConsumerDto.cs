using System.Collections.Generic;
using System.Linq;

namespace GIS.Dto
{
    public class ConsumerDto : LocationDto
    {
        public ConsumerDto()
        {
            InfoLinks = new List<InfoLink>();
            TypeImage = new byte[] { };
            Image = new byte[] { };
        }

        public string ConsumerType { get; set; }

        public string ConsumerName { get; set; }

        public byte[] Image { get; set; }

        public byte[] TypeImage { get; set; }

        public IEnumerable<InfoLink> InfoLinks { get; set; }
    }
}