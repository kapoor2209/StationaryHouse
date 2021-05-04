using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace StationaryHouse.Models
{
    public class Order
    {
        [Key]
        public int OrderID { get; set; }

        [Required]
        [StringLength(1000)]
        [Display(Name = "Delivery Address")]
        public string Address { get; set; }

        [Display(Name = "Order Date")]
        public DateTime OrderDate { get; set; }

        [Required]
        [StringLength(200)]
        [Display(Name = "User ID")]
        public string UserID { get; set; }

        [Required]
        [Display(Name = "Order Quantity")]
        public int Quantity { get; set; }

        [Required]
        [Display(Name = "Unit Price")]
        public int UnitPrice { get; set; }

        [Required]
        public int StationeryID { get; set; }

        [ForeignKey("StationeryID")]
        [InverseProperty("Orders")]
        public Stationery Stationery { get; set; }
    }
}
