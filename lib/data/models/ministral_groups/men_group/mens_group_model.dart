class MenGroupModel {
  String id;
  String name;
  List<String> members = [];

  MenGroupModel({required this.id, required this.name, required this.members});

  factory MenGroupModel.fromJson(Map<String, dynamic> json) => MenGroupModel(
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
