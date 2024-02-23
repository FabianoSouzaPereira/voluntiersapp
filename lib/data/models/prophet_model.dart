
class ProphetModel {
  String id;
  String name;

  ProphetModel({required this.id, required this.name});

  factory ProphetModel.fromJson(Map<String, dynamic> json) => Prophet(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
