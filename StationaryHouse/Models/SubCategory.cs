using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace StationaryHouse.Models
{
    public class SubCategory
    {
        [Key]
        public int SubCategoryID { get; set; }

        [Required]
        [StringLength(100)]
        [Display(Name = "Sub Category Name")]
        public string SubCategoryName { get; set; }

        [Required]
        public int CategoryID { get; set; }

        [ForeignKey("CategoryID")]
        [InverseProperty("SubCategories")]
        public virtual Category Category { get; set; }

        public virtual ICollection<Stationery> Stationeries { get; set; }
    }
}
