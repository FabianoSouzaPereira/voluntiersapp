class VoluntierGroupModel {
  String id;
  String name;
  String description;
  String type;

  VoluntierGroupModel({
    required this.id,
    required this.name,
    required this.description,
    required this.type,
  });

  factory VoluntierGroupModel.fromJson(Map<String, dynamic> json) => VoluntierGroupModel(
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
