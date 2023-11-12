class WomensMinistry {
  String id;
  String name;

  WomensMinistry({required this.id, required this.name});

  factory WomensMinistry.fromJson(Map<String, dynamic> json) => WomensMinistry(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
