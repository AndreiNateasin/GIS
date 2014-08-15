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
    
    public partial class MapElementTypes
    {
        public MapElementTypes()
        {
            this.Capacitors = new HashSet<Capacitors>();
            this.Consumers = new HashSet<Consumers>();
            this.Consumers1 = new HashSet<Consumers>();
            this.FiscalMeters = new HashSet<FiscalMeters>();
            this.PowerTransformers = new HashSet<PowerTransformers>();
            this.MapElementsToMapElementLinks = new HashSet<MapElementsToMapElementLinks>();
        }
    
        public int IDMapElementType { get; set; }
        public string TypeName { get; set; }
        public byte[] TypeImage { get; set; }
        public System.DateTime CreatedOn { get; set; }
        public int CreatedBy { get; set; }
        public Nullable<System.DateTime> ModifiedOn { get; set; }
        public Nullable<int> ModifiedBy { get; set; }
        public Nullable<bool> Active { get; set; }
    
        public virtual ICollection<Capacitors> Capacitors { get; set; }
        public virtual ICollection<Consumers> Consumers { get; set; }
        public virtual ICollection<Consumers> Consumers1 { get; set; }
        public virtual ICollection<FiscalMeters> FiscalMeters { get; set; }
        public virtual ICollection<PowerTransformers> PowerTransformers { get; set; }
        public virtual ICollection<MapElementsToMapElementLinks> MapElementsToMapElementLinks { get; set; }
    }
}