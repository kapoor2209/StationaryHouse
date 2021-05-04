using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace StationaryHouse.Models
{
    public class FileUpload
    {
        [Required]
        [Display(Name = "Image File")]
        public IFormFile FormFile { get; set; }
    }
}
