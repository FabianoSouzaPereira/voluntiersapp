class MinisterModel {
  String id;
  String name;

  MinisterModel({required this.id, required this.name});

  factory MinisterModel.fromJson(Map<String, dynamic> json) => MinisterModel(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
