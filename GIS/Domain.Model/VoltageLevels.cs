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
    
    public partial class VoltageLevels
    {
        public VoltageLevels()
        {
            this.ElectricLines = new HashSet<ElectricLines>();
            this.FiscalMeters = new HashSet<FiscalMeters>();
            this.PowerTransformers = new HashSet<PowerTransformers>();
            this.PowerTransformers1 = new HashSet<PowerTransformers>();
        }
    
        public int IDVoltageLevel { get; set; }
        public string Name { get; set; }
        public System.DateTime CreatedOn { get; set; }
        public int CreatedBy { get; set; }
        public Nullable<System.DateTime> ModifiedOn { get; set; }
        public Nullable<int> ModifiedBy { get; set; }
        public bool Active { get; set; }
    
        public virtual ICollection<ElectricLines> ElectricLines { get; set; }
        public virtual ICollection<FiscalMeters> FiscalMeters { get; set; }
        public virtual ICollection<PowerTransformers> PowerTransformers { get; set; }
        public virtual ICollection<PowerTransformers> PowerTransformers1 { get; set; }
    }
}