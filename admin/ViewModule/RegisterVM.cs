using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace admin.ViewModule
{
    public class RegisterVM
    {
        //Yeu cau
        [Required(ErrorMessage ="Username cannot be blamk.")]
        public string Username { get; set; }
        [Required(ErrorMessage = "Password cannot be blamk.")]
        public string Password { get; set; }
        [Required(ErrorMessage = "Confirm Password cannot be blamk.")]
        // kiem tra Password ? = ConfirmPassword
        [Compare("Password", ErrorMessage = "Password and ConfirmPassword do not match.")]
        public string ConfirmPassword { get; set; }
        [Required(ErrorMessage ="Email cannot be blank.")]
        // kiem tra dinh dang email
        [EmailAddress(ErrorMessage ="Invalid Email.")]
        public string Email { get; set; }
        public string Mobile { get; set; }
        public DateTime? DateofBirth { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
    }
}