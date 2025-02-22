void main() {
  Map<int, String> rooms = {
    1: "Salon",
    2: "Mutfak",
    3: "Yatak Odası",
    4: "Depo"
  };

  Map<int, String> lightsOnRooms = {
    1: "Açık",
    2: "Kapalı",
    3: "Kapalı",
    4: "Açık"
  };

  Map<int, int> degreesOfRooms = {1: 21, 2: 24, 3: 23, 4: 18};

  print(getRoomName(rooms, 1));
  print(getRoomNumber(rooms, "Mutfak"));

  print(howManyLightsOn(lightsOnRooms));

  print(findRoomWithMaxDegree(degreesOfRooms));
  print(findRoomWithMinDegree(degreesOfRooms));
  print(findAvgDegreeOfRooms(degreesOfRooms));
}

String getRoomName(Map<int, String> rooms, int roomNumber) {
  return rooms[roomNumber] ?? "Bulunamadi";
}

//Odanin ismini verdiğiniz ve sayi döndüren fonksiyon yazın
int getRoomNumber(Map<int, String> rooms, String roomName) {
  for (var key in rooms.keys) {
    if (rooms[key] == roomName) {
      return key;
    }
  }
  return -1;
}

int howManyLightsOn(Map<int, String> lightsOnRooms) {
  int counter = 0;
  for (String light in lightsOnRooms.values) {
    if (light == "Açık") {
      counter++;
    }
  }

  return counter;
}

int findRoomWithMaxDegree(Map<int, int> degreesOfRooms) {
  int max = 0;
  for (int degree in degreesOfRooms.values) {
    if (degree > max) {
      max = degree;
    }
  }
  return max;
}

int findRoomWithMinDegree(Map<int, int> degreesOfRooms) {
  int min = 100;
  for (int degree in degreesOfRooms.values) {
    if (degree < min) {
      min = degree;
    }
  }
  return min;
}

int findAvgDegreeOfRooms(Map<int, int> degreesOfRooms) {
  int sum = 0;
  int room = 0;
  for (int degree in degreesOfRooms.values) {
    sum += degree;
    room++;
  }
  var avg = sum / room;
  return avg.round();
}
