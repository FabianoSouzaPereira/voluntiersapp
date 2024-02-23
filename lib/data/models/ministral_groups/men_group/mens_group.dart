class MenGroup {
  String id;
  String name;
  List<String> members = [];

  MenGroup({required this.id, required this.name, required this.members});

  factory MenGroup.fromJson(Map<String, dynamic> json) => MenGroup(
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
