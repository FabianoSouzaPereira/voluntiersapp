class BibleStudyTeachers {
  String id;
  String name;
  List<String> members = [];

  BibleStudyTeachers({required this.id, required this.name, required this.members});

  factory BibleStudyTeachers.fromJson(Map<String, dynamic> json) => BibleStudyTeachers(
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
