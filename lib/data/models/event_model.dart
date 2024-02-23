class EventModel {
  String id;
  String name;
  String description;
  String type;

  EventModel({
    required this.id,
    required this.name,
    required this.description,
    required this.type,
  });

  factory EventModel.fromJson(Map<String, dynamic> json) => EventModel(
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
