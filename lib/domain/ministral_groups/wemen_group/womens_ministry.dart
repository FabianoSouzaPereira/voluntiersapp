class WomensMinistry {
  String id;
  String name;
  List<String> members = [];

  WomensMinistry({required this.id, required this.name, required this.members});

  factory WomensMinistry.fromJson(Map<String, dynamic> json) => WomensMinistry(
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
