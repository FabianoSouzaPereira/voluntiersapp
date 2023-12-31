class Event {
  String id;
  String name;
  String description;
  String type;

  Event({
    required this.id,
    required this.name,
    required this.description,
    required this.type,
  });

  factory Event.fromJson(Map<String, dynamic> json) => Event(
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
