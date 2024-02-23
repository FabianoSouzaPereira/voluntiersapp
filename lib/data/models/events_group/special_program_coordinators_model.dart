class SpecialProgramsCoordenatorsModel {
  String id;
  String name;
  List<String> members = [];

  SpecialProgramsCoordenatorsModel({required this.id, required this.name, required this.members});

  factory SpecialProgramsCoordenatorsModel.fromJson(Map<String, dynamic> json) => SpecialProgramsCoordenatorsModel(
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
