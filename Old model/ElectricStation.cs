//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace GIS.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class ElectricStation
    {
        public ElectricStation()
        {
            this.Consumers = new HashSet<Consumer>();
        }
    
        public int IDElectricStation { get; set; }
        public string ElectricStationName { get; set; }
    
        public virtual ICollection<Consumer> Consumers { get; set; }
    }
}