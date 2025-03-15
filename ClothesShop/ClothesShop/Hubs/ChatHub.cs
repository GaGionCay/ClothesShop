using Microsoft.AspNetCore.SignalR;

namespace ClothesShop.Hubs
{
    public class ChatHub : Hub
    {
        public void SendMessage(string user, string message)
        {
            Clients.All.SendAsync("receiveMessage", user, message);
        }
    }
}
