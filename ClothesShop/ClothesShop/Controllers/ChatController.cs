using Microsoft.AspNetCore.Mvc;

namespace ClothesShop.Controllers
{
    public class ChatController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
