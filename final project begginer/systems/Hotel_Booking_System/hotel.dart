
import 'room.dart';

class Hotel {
  String name;
  List<Room> rooms = [];
  Hotel(this.name);
  
  void addRoom(Room room) {
    rooms.add(room);
  }

  void showAvailableRooms() {
    print("Available Rooms: ");
    for (var room in rooms) {
      if (room.isAvailable) {
        print("Room ${room.roomNumber} - Price: ${room.price}");
      }
    }
  }
}