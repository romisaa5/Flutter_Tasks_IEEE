
import 'booking.dart';
import 'room.dart';

class User {
  String name;
  List<Booking> bookings = []; 

  User(this.name);

  void makeBooking(Room room) {
    if (room.isAvailable) {
      Booking booking = Booking(user: this, room: room);
      bookings.add(booking);
      room.bookRoom();
      print("$name booked Room ${room.roomNumber}.");
    } else {
      print("Room ${room.roomNumber} is not available.");
    }
  }

  void cancelBooking(Booking booking) {
    if (bookings.contains(booking)) {
      booking.cancelBooking();
      bookings.remove(booking);
      print("$name canceled booking for Room ${booking.room.roomNumber}.");
    }
  }
}
