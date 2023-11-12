class TeensMinistry {
  String id;
  String name;
  List<String> members = [];

  TeensMinistry({required this.id, required this.name, required this.members});

  factory TeensMinistry.fromJson(Map<String, dynamic> json) => TeensMinistry(
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
