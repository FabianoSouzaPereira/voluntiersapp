class MensMinistry {
  String id;
  String name;
  List<String> members = [];

  MensMinistry({required this.id, required this.name, required this.members});

  factory MensMinistry.fromJson(Map<String, dynamic> json) => MensMinistry(
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
