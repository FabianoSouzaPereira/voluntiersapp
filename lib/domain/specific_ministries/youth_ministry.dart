class YouthMinistry {
  String id;
  String name;

  YouthMinistry({required this.id, required this.name});

  factory YouthMinistry.fromJson(Map<String, dynamic> json) => YouthMinistry(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
