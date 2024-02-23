class DeaconsModel {
  String id;
  String name;

  DeaconsModel({required this.id, required this.name});

  factory DeaconsModel.fromJson(Map<String, dynamic> json) => Deacons(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
