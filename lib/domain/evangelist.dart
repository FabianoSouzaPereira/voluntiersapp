class Evangelist {
  String id;
  String name;

  Evangelist({required this.id, required this.name});

  factory Evangelist.fromJson(Map<String, dynamic> json) => Evangelist(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
