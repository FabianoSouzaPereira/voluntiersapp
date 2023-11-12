class Apostle {
  String id;
  String name;

  Apostle({required this.id, required this.name});

  factory Apostle.fromJson(Map<String, dynamic> json) => Apostle(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
