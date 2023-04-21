using Microsoft.AspNetCore.Mvc;

namespace QLTN.Controllers
{
    public class AboutController : Controller
    {
        public IActionResult Index()
        {
            return View();

        }
    }
}
