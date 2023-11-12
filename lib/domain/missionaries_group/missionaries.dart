class Missionaries {
  String id;
  String name;

  Missionaries({required this.id, required this.name});

  factory Missionaries.fromJson(Map<String, dynamic> json) => Missionaries(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
