class TeensGroup {
  String id;
  String name;
  List<String> members = [];

  TeensGroup({required this.id, required this.name, required this.members});

  factory TeensGroup.fromJson(Map<String, dynamic> json) => TeensGroup(
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
