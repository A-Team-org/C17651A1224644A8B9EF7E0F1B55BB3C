using HotelCasaRiva.Data.Dtos;
using System;
using System.Collections.Generic;
using System.Data;

namespace HotelCasaRiva.Services.Interfaces
{
    public interface IRoomService
    {
        DataTable GetRoomBlockData();
        string GetRoomDetails(int roomId);
        List<Room> AvailableRoom(int NoOfPerson,DateTime? CheckIndate,DateTime? CheckOutDate);
    }
}
