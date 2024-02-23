class ChildrenGroup {
  String id;
  String name;
  List<String> members = [];

  ChildrenGroup({required this.id, required this.name, required this.members});

  factory ChildrenGroup.fromJson(Map<String, dynamic> json) => ChildrenGroup(
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
