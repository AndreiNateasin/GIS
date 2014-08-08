using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GIS.Dto
{
    public class ConsumerTypeDto
    {
        public string ConsumerTypeName { get; set; }
        
        public string MapType { get; set; }

        public byte[] Image { get; set; }
    }
}