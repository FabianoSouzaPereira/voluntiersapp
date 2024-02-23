class VoluntierGroup {
  String id;
  String name;
  String description;
  String type;

  VoluntierGroup({
    required this.id,
    required this.name,
    required this.description,
    required this.type,
  });

  factory VoluntierGroup.fromJson(Map<String, dynamic> json) => VoluntierGroup(
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
