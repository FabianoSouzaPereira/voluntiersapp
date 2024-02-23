class MissionariesGroupModel {
  String id;
  String name;
  List<String> members = [];

  MissionariesGroupModel({required this.id, required this.name, required this.members});

  factory MissionariesGroupModel.fromJson(Map<String, dynamic> json) => MissionariesGroupModel(
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
