class AdmininstrativeTeam {
  String id;
  String name;

  AdmininstrativeTeam({required this.id, required this.name});

  factory AdmininstrativeTeam.fromJson(Map<String, dynamic> json) => AdmininstrativeTeam(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
