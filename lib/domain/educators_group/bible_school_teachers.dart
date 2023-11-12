class BibleSchoolTeachers {
  String id;
  String name;
  List<String> members = [];

  BibleSchoolTeachers({required this.id, required this.name, required this.members});

  factory BibleSchoolTeachers.fromJson(Map<String, dynamic> json) => BibleSchoolTeachers(
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
