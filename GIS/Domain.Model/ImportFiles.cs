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
    
    public partial class ImportFiles
    {
        public ImportFiles()
        {
            this.Imports = new HashSet<Imports>();
            this.Imports1 = new HashSet<Imports>();
        }
    
        public int IDImportFile { get; set; }
        public string FileName { get; set; }
        public string ContentType { get; set; }
        public byte[] FileContent { get; set; }
        public System.DateTime UploadStartTime { get; set; }
        public Nullable<System.DateTime> UploadEndTime { get; set; }
        public int FileSize { get; set; }
        public string FileExtension { get; set; }
    
        public virtual ICollection<Imports> Imports { get; set; }
        public virtual ICollection<Imports> Imports1 { get; set; }
    }
}