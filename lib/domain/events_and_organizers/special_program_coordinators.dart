class SpecialProgramsCoordenators {
  String id;
  String name;
  List<String> members = [];

  SpecialProgramsCoordenators({required this.id, required this.name, required this.members});

  factory SpecialProgramsCoordenators.fromJson(Map<String, dynamic> json) => SpecialProgramsCoordenators(
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
