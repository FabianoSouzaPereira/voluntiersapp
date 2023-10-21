class Voluntier {
  String id;
  String name;
  String description;
  String type;

  Voluntier({
    required this.id,
    required this.name,
    required this.description,
    required this.type,
  });

  factory Voluntier.fromJson(Map<String, dynamic> json) => Voluntier(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "type": type,
      };
}
