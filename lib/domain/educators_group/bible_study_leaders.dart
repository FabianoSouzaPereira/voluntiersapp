class BibleStudyTeachers {
  String id;
  String name;

  BibleStudyTeachers({required this.id, required this.name});

  factory BibleStudyTeachers.fromJson(Map<String, dynamic> json) => BibleStudyTeachers(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
