abstract class PositionOption {}

class Reception extends PositionOption {
  final List<ReceptionOption> options;

  Reception(this.options);
}

enum ReceptionOption {
  library,
  canteen,
}

class Parking extends PositionOption {
  final List<ParkingOption> options;

  Parking(this.options);
}

enum ParkingOption {
  onlyMen,
}

class Positions {
  final Map<Position, PositionOption> optionsMap;

  Positions() : optionsMap = {};

  void addOptions(Position position, PositionOption options) {
    optionsMap[position] = options;
  }

  PositionOption? getOptions(Position position) {
    return optionsMap[position];
  }
}

enum Position {
  reception,
  parking,
  lobby,
  hospitality,
  announcements,
}
