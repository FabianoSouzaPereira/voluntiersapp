class Users {
  String id;
  String name;
  String description;
  String type;

  Users({
    required this.id,
    required this.name,
    required this.description,
    required this.type,
  });

  factory Users.fromJson(Map<String, dynamic> json) => Users(
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
