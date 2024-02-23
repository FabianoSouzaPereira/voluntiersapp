class EvangelistModel {
  String id;
  String name;

  EvangelistModel({required this.id, required this.name});

  factory EvangelistModel.fromJson(Map<String, dynamic> json) => EvangelistModel(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
