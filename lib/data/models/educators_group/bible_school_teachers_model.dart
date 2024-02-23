class BibleSchoolTeachersModel {
  String id;
  String name;
  List<String> members = [];

  BibleSchoolTeachersModel({required this.id, required this.name, required this.members});

  factory BibleSchoolTeachersModel.fromJson(Map<String, dynamic> json) => BibleSchoolTeachersModel(
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
