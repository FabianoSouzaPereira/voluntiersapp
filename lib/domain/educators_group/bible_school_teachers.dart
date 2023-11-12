class BibleSchoolTeachers {
  String id;
  String name;

  BibleSchoolTeachers({required this.id, required this.name});

  factory BibleSchoolTeachers.fromJson(Map<String, dynamic> json) => BibleSchoolTeachers(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
