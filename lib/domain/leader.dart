class Leader {
  String id;
  String name;
  String description;
  String type;

  Leader({
    required this.id,
    required this.name,
    required this.description,
    required this.type,
  });

  factory Leader.fromJson(Map<String, dynamic> json) => Leader(
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
