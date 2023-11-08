class Pastor {
  String id;
  String name;

  Pastor({required this.id, required this.name});

  factory Pastor.fromJson(Map<String, dynamic> json) => Pastor(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
