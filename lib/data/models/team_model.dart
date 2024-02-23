class TeamModel {
  String id;
  String name;
  String description;
  String type;
  String leader;

  TeamModel({
    required this.id,
    required this.name,
    required this.description,
    required this.type,
    required this.leader,
  });

  factory TeamModel.fromJson(Map<String, dynamic> json) => TeamModel(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        type: json["type"],
        leader: json["leader"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "type": type,
        "leader": leader,
      };
}

enum Teams {
  parkingTeam,
  entranceHallTeam,
  receptionTeam,
  hospitalityTeam,
  announcementteam,
  otherTeam,
}
