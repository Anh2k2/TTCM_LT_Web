using Microsoft.AspNetCore.Mvc;

namespace QLTN.Controllers
{
    public class ContactController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
