using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using StationaryHouse.Data;
using StationaryHouse.Models;

namespace StationaryHouse.Controllers
{
    [Authorize(Roles = "power")]
    public class StationeriesController : Controller
    {
        private readonly ApplicationDbContext _context;
        private readonly IWebHostEnvironment _environment;

        public StationeriesController(ApplicationDbContext context, IWebHostEnvironment env)
        {
            _context = context;
            _environment = env;
        }


        // GET: Stationeries
        public async Task<IActionResult> Index()
        {
            var applicationDbContext = _context.Stationeries.Include(s => s.SubCategory);
            return View(await applicationDbContext.ToListAsync());
        }

        // GET: Stationeries/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var stationery = await _context.Stationeries
                .Include(s => s.SubCategory)
                .FirstOrDefaultAsync(m => m.StationeryID == id);
            if (stationery == null)
            {
                return NotFound();
            }

            return View(stationery);
        }

        // GET: Stationeries/Create
        public IActionResult Create()
        {
            ViewData["SubCategoryID"] = new SelectList(_context.SubCategories, "SubCategoryID", "SubCategoryName");
            return View();
        }

        // POST: Stationeries/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("StationeryID,StationeryName,Price,File,SubCategoryID")] Stationery stationery)
        {
            using (var memoryStream = new MemoryStream())
            {
                await stationery.File.FormFile.CopyToAsync(memoryStream);

                string photoname = stationery.File.FormFile.FileName;
                stationery.Extension = Path.GetExtension(photoname);
                if (!".jpg.jpeg.png.gif.bmp".Contains(stationery.Extension.ToLower()))
                {
                    ModelState.AddModelError("File.FormFile", "Invalid Format of Image Given.");
                }
                else
                {
                    ModelState.Remove("Extension");
                }
            }
            if (ModelState.IsValid)
            {
                _context.Add(stationery);
                await _context.SaveChangesAsync();
                var uploadsRootFolder = Path.Combine(_environment.WebRootPath, "spics");
                if (!Directory.Exists(uploadsRootFolder))
                {
                    Directory.CreateDirectory(uploadsRootFolder);
                }
                string filename = stationery.StationeryID + stationery.Extension;
                var filePath = Path.Combine(uploadsRootFolder, filename);
                using (var fileStream = new FileStream(filePath, FileMode.Create))
                {
                    await stationery.File.FormFile.CopyToAsync(fileStream).ConfigureAwait(false);
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["SubCategoryID"] = new SelectList(_context.SubCategories, "SubCategoryID", "SubCategoryName", stationery.SubCategoryID);
            return View(stationery);
        }

        // GET: Stationeries/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var stationery = await _context.Stationeries.FindAsync(id);
            if (stationery == null)
            {
                return NotFound();
            }
            ViewData["SubCategoryID"] = new SelectList(_context.SubCategories, "SubCategoryID", "SubCategoryName", stationery.SubCategoryID);
            return View(stationery);
        }

        // POST: Stationeries/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("StationeryID,StationeryName,Price,Extension,SubCategoryID")] Stationery stationery)
        {
            if (id != stationery.StationeryID)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(stationery);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!StationeryExists(stationery.StationeryID))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["SubCategoryID"] = new SelectList(_context.SubCategories, "SubCategoryID", "SubCategoryName", stationery.SubCategoryID);
            return View(stationery);
        }

        // GET: Stationeries/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var stationery = await _context.Stationeries
                .Include(s => s.SubCategory)
                .FirstOrDefaultAsync(m => m.StationeryID == id);
            if (stationery == null)
            {
                return NotFound();
            }

            return View(stationery);
        }

        // POST: Stationeries/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var stationery = await _context.Stationeries.FindAsync(id);
            _context.Stationeries.Remove(stationery);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool StationeryExists(int id)
        {
            return _context.Stationeries.Any(e => e.StationeryID == id);
        }
    }
}
