class User {
  String id;
  String name;
  String description;
  String type;

  User({
    required this.id,
    required this.name,
    required this.description,
    required this.type,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
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
