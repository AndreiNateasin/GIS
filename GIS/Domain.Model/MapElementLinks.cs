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
    
    public partial class MapElementLinks
    {
        public MapElementLinks()
        {
            this.MapElementsToMapElementLinks = new HashSet<MapElementsToMapElementLinks>();
        }
    
        public int IDMapElementLink { get; set; }
        public string Title { get; set; }
        public string ReferenceIndex { get; set; }
        public System.DateTime CreatedOn { get; set; }
        public int CreatedBy { get; set; }
        public Nullable<System.DateTime> ModifiedOn { get; set; }
        public Nullable<int> ModifiedBy { get; set; }
        public bool Active { get; set; }
    
        public virtual ICollection<MapElementsToMapElementLinks> MapElementsToMapElementLinks { get; set; }
    }
}