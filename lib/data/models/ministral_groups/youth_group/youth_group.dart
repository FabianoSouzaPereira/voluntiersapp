class YouthGoup {
  String id;
  String name;
  List<String> members = [];

  YouthGoup({required this.id, required this.name, required this.members});

  factory YouthGoup.fromJson(Map<String, dynamic> json) => YouthGoup(
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
