using System.Data;

namespace HotelCasaRiva.Services.Interfaces
{
    public interface IRoomService
    {
        DataTable GetRoomBlockData();
        string GetRoomDetails(int roomId);
    }
}
