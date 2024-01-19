using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web.Mvc;
using eProject3.Models;

namespace eProject3.Controllers
{
    public class EmplooyeesController : Controller
    {
        private NexusmarketingEntities db = new NexusmarketingEntities();

        // GET: Emplooyees
        public ActionResult Index()
        {
            return View(db.Emplooyees.ToList());
        }

        // GET: Emplooyees/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Emplooyee emplooyee = db.Emplooyees.Find(id);
            if (emplooyee == null)
            {
                return HttpNotFound();
            }
            return View(emplooyee);
        }

        // GET: Emplooyees/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Emplooyees/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Employee_ID,EmployeeName,UserName,Password,email,address,phone_number,created_at")] Emplooyee emplooyee)
        {
            if (ModelState.IsValid)
            {
                db.Emplooyees.Add(emplooyee);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(emplooyee);
        }

        // GET: Emplooyees/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Emplooyee emplooyee = db.Emplooyees.Find(id);
            if (emplooyee == null)
            {
                return HttpNotFound();
            }
            return View(emplooyee);
        }

        // POST: Emplooyees/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Employee_ID,EmployeeName,UserName,Password,email,address,phone_number,created_at")] Emplooyee emplooyee)
        {
            if (ModelState.IsValid)
            {
                db.Entry(emplooyee).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(emplooyee);
        }

        // GET: Emplooyees/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Emplooyee emplooyee = db.Emplooyees.Find(id);
            if (emplooyee == null)
            {
                return HttpNotFound();
            }
            return View(emplooyee);
        }

        // POST: Emplooyees/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Emplooyee emplooyee = db.Emplooyees.Find(id);
            db.Emplooyees.Remove(emplooyee);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
