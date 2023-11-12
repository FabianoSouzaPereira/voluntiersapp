class Deacons {
  String id;
  String name;

  Deacons({required this.id, required this.name});

  factory Deacons.fromJson(Map<String, dynamic> json) => Deacons(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
