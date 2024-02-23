class ChildrenGroupModel {
  String id;
  String name;
  List<String> members = [];

  ChildrenGroupModel({required this.id, required this.name, required this.members});

  factory ChildrenGroupModel.fromJson(Map<String, dynamic> json) => ChildrenGroupModel(
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
