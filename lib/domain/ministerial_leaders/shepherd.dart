class Shapherd {
  String id;
  String name;

  Shapherd({required this.id, required this.name});

  factory Shapherd.fromJson(Map<String, dynamic> json) => Shapherd(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
