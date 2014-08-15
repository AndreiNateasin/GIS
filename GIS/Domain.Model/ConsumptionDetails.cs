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
    
    public partial class ConsumptionDetails
    {
        public int IDConsumptionDetail { get; set; }
        public int IDConsumption { get; set; }
        public decimal ElectricCurrent { get; set; }
        public decimal Voltage { get; set; }
        public decimal Power { get; set; }
        public decimal PowerFactor { get; set; }
        public decimal CurrentUnbalance { get; set; }
        public decimal VoltageUnbalance { get; set; }
        public decimal Frequency { get; set; }
        public System.DateTime CreatedOn { get; set; }
        public int CreatedBy { get; set; }
        public Nullable<System.DateTime> ModifiedOn { get; set; }
        public Nullable<int> ModifiedBy { get; set; }
    
        public virtual Consumption Consumption { get; set; }
        public virtual Users Users { get; set; }
        public virtual Users Users1 { get; set; }
    }
}