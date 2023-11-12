class MensMinistry {
  String id;
  String name;

  MensMinistry({required this.id, required this.name});

  factory MensMinistry.fromJson(Map<String, dynamic> json) => MensMinistry(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
