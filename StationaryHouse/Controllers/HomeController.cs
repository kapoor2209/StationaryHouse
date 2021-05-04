using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using StationaryHouse.Data;
using StationaryHouse.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;

namespace StationaryHouse.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly ApplicationDbContext _context;
        private readonly UserManager<IdentityUser> _userManager;

        public HomeController(ApplicationDbContext context, UserManager<IdentityUser> userManager, ILogger<HomeController> logger)
        {
            _logger = logger;
            _context = context;
            _userManager = userManager;
        }

        public async Task<IActionResult> Index()
        {
            return View(await _context.Categories.ToListAsync());
        }

        public async Task<IActionResult> ViewSubCategory(int? id)
        {
            var category = await _context.Categories.FindAsync(id);
            ViewData["CategoryName"] = "None";
            if (category != null)
            {
                ViewData["CategoryName"] = category.CategoryName;
            }
            var applicationDbContext = _context.SubCategories
                .Include(j => j.Category)
                .Where(m => m.CategoryID == id);
            return View(await applicationDbContext.ToListAsync());
        }

        public async Task<IActionResult> AllCategories(int? id)
        {
            var applicationDbContext = _context.Categories
                .Include(j => j.SubCategories);
            return View(await applicationDbContext.ToListAsync());
        }

        public async Task<IActionResult> ViewStationery(int? id)
        {
            var subcategory = await _context.SubCategories.FindAsync(id);
            ViewData["SubCategoryName"] = "None";
            if (subcategory != null)
            {
                ViewData["SubCategoryName"] = subcategory.SubCategoryName;
            }
            var applicationDbContext = _context.Stationeries
                .Include(j => j.SubCategory)
                .Where(m => m.SubCategoryID == id);
            return View(await applicationDbContext.ToListAsync());
        }

        public async Task<IActionResult> AllStationery(int? id)
        {
            var applicationDbContext = _context.Stationeries
                .Include(j => j.SubCategory);         
            return View(await applicationDbContext.ToListAsync());
        }

        [Authorize]
        public IActionResult PlaceOrder(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }
            var stationery = _context.Stationeries
                .FirstOrDefault(m => m.StationeryID == id);
            if (stationery == null)
            {
                return NotFound();
            }

            ViewData["StationeryID"] = stationery.StationeryID;
            ViewData["StationeryName"] = stationery.StationeryName;
            ViewData["Price"] = stationery.Price;
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> PlaceOrder([Bind("OrderID,Address,Quantity,StationeryID")] Order order)
        {
            ModelState.Remove("Price");
            ModelState.Remove("Total");
            ModelState.Remove("UserID");
            ModelState.Remove("OrderDate");
            if (ModelState.IsValid)
            {
                order.UserID = _userManager.GetUserName(this.User);
                order.OrderDate = DateTime.Now;
                var stationery = await _context.Stationeries.FirstOrDefaultAsync(m => m.StationeryID == order.StationeryID);
                if (stationery != null)
                {
                    order.UnitPrice = (int)stationery.Price;
                }
                _context.Add(order);
                await _context.SaveChangesAsync();                
            }
            return RedirectToAction(nameof(UserOrder));
        }

        [Authorize]
        public async Task<IActionResult> UserOrder()
        {
            string userid = _userManager.GetUserName(this.User);
            var orders = _context.Orders
                .Where(m => m.UserID == userid);
            if (orders.Count() > 0)
            {
                foreach (Order order in orders)
                {
                    order.Stationery = _context.Stationeries
                        .FirstOrDefault(m => m.StationeryID == order.StationeryID);
                }
            }
            return View(await orders.ToListAsync());
        }
        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
