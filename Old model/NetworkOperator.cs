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
    
    public partial class NetworkOperator
    {
        public NetworkOperator()
        {
            this.AcquisitionPrices = new HashSet<AcquisitionPrice>();
            this.Consumers = new HashSet<Consumer>();
        }
    
        public int IDNetworkOperator { get; set; }
        public string NetworkOperatorName { get; set; }
    
        public virtual ICollection<AcquisitionPrice> AcquisitionPrices { get; set; }
        public virtual ICollection<Consumer> Consumers { get; set; }
    }
}