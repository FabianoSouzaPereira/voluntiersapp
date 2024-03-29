class TeensGroupModel {
  String id;
  String name;
  List<String> members = [];

  TeensGroupModel({required this.id, required this.name, required this.members});

  factory TeensGroupModel.fromJson(Map<String, dynamic> json) => TeensGroupModel(
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
