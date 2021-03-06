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
    
    public partial class ElectricalTariffs
    {
        public int IDElectricalTariff { get; set; }
        public int IDNetworkOperator { get; set; }
        public decimal ActiveEnergyPrice { get; set; }
        public decimal ReactiveMediumVoltageEnergyPrice { get; set; }
        public decimal ReactiveLowVoltageEnergyPrice { get; set; }
        public decimal Transport { get; set; }
        public decimal SystemServices { get; set; }
        public decimal OPCOM { get; set; }
        public decimal HighVoltageDistribution { get; set; }
        public decimal MediumVoltageDistribution { get; set; }
        public decimal LowVoltageDistribution { get; set; }
        public decimal BalancingCost { get; set; }
        public decimal ProviderProfit { get; set; }
        public decimal CogenerationContribution { get; set; }
        public System.DateTime ValidityStartDate { get; set; }
        public Nullable<System.DateTime> ValidityEndDate { get; set; }
        public System.DateTime CreatedOn { get; set; }
        public int CreatedBy { get; set; }
        public Nullable<System.DateTime> ModifiedOn { get; set; }
        public Nullable<int> ModifiedBy { get; set; }
        public bool Active { get; set; }
    
        public virtual NetworkOperators NetworkOperators { get; set; }
    }
}
