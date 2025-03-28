
class Room {
  int roomNumber;
  double price;
  bool isAvailable;
  
  Room(this.roomNumber, this.price, {this.isAvailable = true});
  
  void bookRoom() {
    if (isAvailable) {
      isAvailable = false;
      print("Room $roomNumber has been booked.");
    } else {
      print("Room $roomNumber is already booked.");
    }
  }

  void cancelBooking() {
    isAvailable = true;
    print("Booking for Room $roomNumber has been canceled.");
  }
}