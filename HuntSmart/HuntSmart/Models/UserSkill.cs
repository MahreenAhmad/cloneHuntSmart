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
    
    public partial class UserSkill
    {
        public int UserSkill_Id { get; set; }
        public int UserSkill_SkillId { get; set; }
        public int UserSkill_UserId { get; set; }
    
        public virtual Skill Skill { get; set; }
        public virtual User User { get; set; }
    }
}
