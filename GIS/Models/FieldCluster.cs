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
    
    public partial class FieldCluster
    {
        public FieldCluster()
        {
            this.Consumers = new HashSet<Consumer>();
        }
    
        public int IDFieldCluster { get; set; }
        public string FieldClusterName { get; set; }
    
        public virtual ICollection<Consumer> Consumers { get; set; }
    }
}
