import 'hotel.dart';
import 'room.dart';
import 'user.dart';

void main() {
  Hotel hotel = Hotel("Grand Hotel");

  Room room1 = Room(101, 100);
  Room room2 = Room(102, 150);
  Room room3 = Room(103, 200);

  hotel.addRoom(room1);
  hotel.addRoom(room2);
  hotel.addRoom(room3);

  hotel.showAvailableRooms();

  User user1 = User("Ali", "U001"); 

  user1.makeBooking(room1); 
  user1.makeBooking(room1); 

  hotel.showAvailableRooms();


  if (user1.bookings.isNotEmpty) {
    user1.cancelBooking(user1.bookings.first.room.roomNumber);
  } else {
    print("No bookings to cancel.");
  }

  hotel.showAvailableRooms();
}
