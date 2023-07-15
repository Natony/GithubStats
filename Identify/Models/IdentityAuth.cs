using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;

namespace Identify.Models
{
    public class IdentityAuth
    {
        [PersonalData]
        public string Name { get; set; }
        [PersonalData]
        public DateTime Birthday { get; set; }
    }
}
