using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GIS.Dto
{
    public class StationConsumerDto : LocationDto
    {
        public string ConsumerType { get; set; }
    }
}