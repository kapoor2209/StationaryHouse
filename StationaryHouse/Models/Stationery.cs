using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace StationaryHouse.Models
{
    public class Stationery
    {
        [Key]
        public int StationeryID { get; set; }

        [Required]
        [StringLength(200)]
        [Display(Name = "Stationery Name")]
        public string StationeryName { get; set; }

        [Required]
        [Display(Name = "Stationery Price")]
        public float Price { get; set; }

        [Required]
        [StringLength(20)]
        public string Extension { get; set; }

        [Required]
        public int SubCategoryID { get; set; }

        [ForeignKey("SubCategoryID")]
        [InverseProperty("Stationeries")]
        public virtual SubCategory SubCategory { get; set; }

        [NotMapped]
        public FileUpload File { get; set; }

        public virtual ICollection<Order> Orders { get; set; }
    }
}
