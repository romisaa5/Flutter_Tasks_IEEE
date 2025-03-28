
import 'room.dart';
import 'user.dart';

class Booking {
  User user;
  Room room;
  DateTime bookingDate;

  Booking({required this.user, required this.room}) : bookingDate = DateTime.now();

  void cancelBooking() {
    room.cancelBooking();
    print("${user.name} canceled booking for Room ${room.roomNumber}.");
  }
}