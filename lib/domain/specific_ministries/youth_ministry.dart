class YouthMinistry {
  String id;
  String name;
  List<String> members = [];

  YouthMinistry({required this.id, required this.name, required this.members});

  factory YouthMinistry.fromJson(Map<String, dynamic> json) => YouthMinistry(
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
