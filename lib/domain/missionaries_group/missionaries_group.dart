class MissionariesGroup {
  String id;
  String name;
  List<String> members = [];

  MissionariesGroup({required this.id, required this.name, required this.members});

  factory MissionariesGroup.fromJson(Map<String, dynamic> json) => MissionariesGroup(
        id: json["id"],
        name: json["name"],
        members: json["members"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "members": members,
      };
}
