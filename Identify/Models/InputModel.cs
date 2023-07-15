using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;

namespace Identify.Models
{
    public class InputModel : IdentityAuth
    {
        [Required]
        [DataType(DataType.Text)]
        [Display(Name = "Full name")]
        public string Name { get; set; }

        [Required]
        [Display(Name = "Birth Day")]
        [DataType(DataType.Date)]
        public DateTime? Birthday { get; set; }

        [Required]
        [EmailAddress]
        public string Email { get; set; }
    }
}
