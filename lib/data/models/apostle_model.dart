class ApostleModel {
  String id;
  String name;

  ApostleModel({required this.id, required this.name});

  factory ApostleModel.fromJson(Map<String, dynamic> json) => Apostle(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
