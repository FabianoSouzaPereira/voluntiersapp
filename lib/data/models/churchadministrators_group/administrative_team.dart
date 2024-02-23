class AdmininstrativeTeam {
  String id;
  String name;
  List<String> members = [];

  AdmininstrativeTeam({required this.id, required this.name, required this.members});

  factory AdmininstrativeTeam.fromJson(Map<String, dynamic> json) => AdmininstrativeTeam(
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
