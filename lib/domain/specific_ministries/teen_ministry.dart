class TeensMinistry {
  String id;
  String name;

  TeensMinistry({required this.id, required this.name});

  factory TeensMinistry.fromJson(Map<String, dynamic> json) => TeensMinistry(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
