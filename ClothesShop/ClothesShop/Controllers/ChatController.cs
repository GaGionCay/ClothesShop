using ClothesShop.Models;
using Microsoft.AspNetCore.Mvc;

namespace ClothesShop.Controllers
{
    public class ChatController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public JsonResult GetBotResponse([FromBody] ChatRequest request)
        {
            if (request == null || string.IsNullOrWhiteSpace(request.UserMessage))
            {
                return Json(new { botMessage = "Vui lòng nhập nội dung câu hỏi." });
            }

            string message = request.UserMessage.Trim().ToLower();
            var responses = new Dictionary<string, string>
    {
        { "sản phẩm hot", "Các sản phẩm hot hiện tại là iPhone 15, Samsung S24, MacBook M3." },
        { "giá", "Bạn vui lòng cho biết tên sản phẩm để tôi báo giá nhé!" },
                {"thành bị ngu", "Không sao cả, bạn hãy cố gắng hơn nữa!" }
    };

            foreach (var pair in responses)
            {
                if (message.Contains(pair.Key))
                    return Json(new { botMessage = pair.Value });
            }

            return Json(new { botMessage = "Xin lỗi, tôi không hiểu câu hỏi của bạn." });
        }
    }
}
