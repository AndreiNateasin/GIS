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
    
    public partial class Imports
    {
        public int IDImport { get; set; }
        public int IDImportType { get; set; }
        public int IDOriginalFile { get; set; }
        public Nullable<int> IDAnnotatedFile { get; set; }
        public int IDMonth { get; set; }
        public System.DateTime CreatedOn { get; set; }
        public int CreatedBy { get; set; }
    
        public virtual ImportFiles ImportFiles { get; set; }
        public virtual ImportFiles ImportFiles1 { get; set; }
        public virtual Users Users { get; set; }
    }
}
