class Minister {
  String id;
  String name;

  Minister({required this.id, required this.name});

  factory Minister.fromJson(Map<String, dynamic> json) => Minister(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
