//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace GIS.Domain.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Capacitors
    {
        public int IDCapacitor { get; set; }
        public string Name { get; set; }
        public int IDCapacitorType { get; set; }
        public int IDPowerTransformer { get; set; }
        public Nullable<int> IDMapElementType { get; set; }
        public Nullable<int> InstalledPower { get; set; }
        public string Latitude { get; set; }
        public string Longitude { get; set; }
        public byte[] Image { get; set; }
        public System.DateTime CreatedOn { get; set; }
        public int CreatedBy { get; set; }
        public Nullable<System.DateTime> ModifiedOn { get; set; }
        public Nullable<int> ModifiedBy { get; set; }
        public int Active { get; set; }
    
        public virtual CapacitorTypes CapacitorTypes { get; set; }
        public virtual MapElementTypes MapElementTypes { get; set; }
        public virtual Users Users { get; set; }
        public virtual Users Users1 { get; set; }
        public virtual Users Users2 { get; set; }
    }
}
