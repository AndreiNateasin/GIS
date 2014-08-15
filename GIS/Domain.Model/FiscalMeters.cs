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
    
    public partial class FiscalMeters
    {
        public FiscalMeters()
        {
            this.EnergyInput = new HashSet<EnergyInput>();
        }
    
        public int IDFiscalMeter { get; set; }
        public string Name { get; set; }
        public string Serial { get; set; }
        public Nullable<int> Constant { get; set; }
        public int IDAsset { get; set; }
        public Nullable<int> IDDistrict { get; set; }
        public Nullable<int> IDVoltageLevel { get; set; }
        public Nullable<int> IDNetworkOperator { get; set; }
        public Nullable<int> IDElectricLine { get; set; }
        public Nullable<int> IDMapElementType { get; set; }
        public string Latitude { get; set; }
        public string Longitude { get; set; }
        public byte[] Image { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
        public Nullable<int> CreatedBy { get; set; }
        public Nullable<System.DateTime> ModifiedOn { get; set; }
        public Nullable<int> ModifiedBy { get; set; }
        public bool Active { get; set; }
    
        public virtual Assets Assets { get; set; }
        public virtual Districts Districts { get; set; }
        public virtual ElectricLines ElectricLines { get; set; }
        public virtual ICollection<EnergyInput> EnergyInput { get; set; }
        public virtual MapElementTypes MapElementTypes { get; set; }
        public virtual NetworkOperators NetworkOperators { get; set; }
        public virtual Users Users { get; set; }
        public virtual Users Users1 { get; set; }
        public virtual VoltageLevels VoltageLevels { get; set; }
    }
}