//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace HuntSmart.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class RatingQuestion
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public RatingQuestion()
        {
            this.RatingResponses = new HashSet<RatingResponse>();
        }
    
        public int RatingQuestion_Id { get; set; }
        public string RatingQuestion_Statement { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<RatingResponse> RatingResponses { get; set; }
    }
}
