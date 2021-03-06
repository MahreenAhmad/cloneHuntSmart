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
    
    public partial class Review
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Review()
        {
            this.Comments = new HashSet<Comment>();
            this.RatingResponses = new HashSet<RatingResponse>();
        }
    
        public int Review_Id { get; set; }
        public int Review_CompanyId { get; set; }
        public int Review_UserId { get; set; }
        public double Review_CRating { get; set; }
        public string Review_Feedback { get; set; }
        public System.DateTime Review_Time { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Comment> Comments { get; set; }
        public virtual Company Company { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<RatingResponse> RatingResponses { get; set; }
        public virtual User User { get; set; }
    }
}
