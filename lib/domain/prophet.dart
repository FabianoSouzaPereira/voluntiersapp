class Prophet {
  String id;
  String name;

  Prophet({required this.id, required this.name});

  factory Prophet.fromJson(Map<String, dynamic> json) => Prophet(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
