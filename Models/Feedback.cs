//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Smart_Trafic_Management_System.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    public partial class Feedback
    {
        public Nullable<int> User_ID { get; set; }
        public int Feedback_ID { get; set; }
        [Required]
        public string Description { get; set; }
        public Nullable<System.DateTime> date { get; set; }
    
        public virtual User User { get; set; }
    }
}
