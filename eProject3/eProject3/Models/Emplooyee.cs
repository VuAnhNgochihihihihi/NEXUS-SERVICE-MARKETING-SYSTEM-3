//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace eProject3.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Emplooyee
    {
        public int Employee_ID { get; set; }
        public string EmployeeName { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string email { get; set; }
        public string address { get; set; }
        public Nullable<int> phone_number { get; set; }
        public byte[] created_at { get; set; }
    }
}