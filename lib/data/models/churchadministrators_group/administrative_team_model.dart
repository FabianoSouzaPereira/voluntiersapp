class AdmininstrativeTeamModel {
  String id;
  String name;
  List<String> members = [];

  AdmininstrativeTeamModel({required this.id, required this.name, required this.members});

  factory AdmininstrativeTeamModel.fromJson(Map<String, dynamic> json) => AdmininstrativeTeamModel(
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
