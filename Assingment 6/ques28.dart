class Guest {
  String name;
  String phone;

  Guest(this.name, this.phone);
}

class Room {
  int roomNumber;
  String roomType;
  double pricePerNight;
  bool isAvailable;

  Room(this.roomNumber, this.roomType, this.pricePerNight,
      {this.isAvailable = true});

  void displayRoom() {
    print("Room Number: $roomNumber");
    print("Room Type: $roomType");
    print("Price Per Night: $pricePerNight");
    print("Available: $isAvailable");
  }
}

class Reservation {
  Guest guest;
  Room room;
  int nights;

  Reservation(this.guest, this.room, this.nights);

  void makeReservation() {
    if (room.isAvailable) {
      room.isAvailable = false;

      double totalCost = room.pricePerNight * nights;

      print("Reservation Successful!");
      print("Guest: ${guest.name}");
      print("Room: ${room.roomNumber}");
      print("Nights: $nights");
      print("Total Cost: $totalCost");
    } else {
      print("Room is not available.");
    }
  }

  void cancelReservation() {
    room.isAvailable = true;
    print("Reservation cancelled.");
  }
}

void main() {
  Guest guest = Guest("Sreejoye", "01700000000");

  Room room = Room(101, "Deluxe", 3000);

  Reservation reservation = Reservation(guest, room, 3);

  reservation.makeReservation();

  print("----------------------");

  reservation.cancelReservation();

  print("Room Available: ${room.isAvailable}");
}