class BibleStudyTeachersModel {
  String id;
  String name;
  List<String> members = [];

  BibleStudyTeachersModel({required this.id, required this.name, required this.members});

  factory BibleStudyTeachersModel.fromJson(Map<String, dynamic> json) => BibleStudyTeachersModel(
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
