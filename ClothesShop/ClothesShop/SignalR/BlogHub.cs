using Microsoft.AspNetCore.SignalR;

namespace ClothesShop.SignalR
{
    public class BlogHub : Hub
    {
        public async Task SendMessage(string user, string message)
        {
            await Clients.All.SendAsync("ReceiveMessage", user, message);
        }
    }
}
