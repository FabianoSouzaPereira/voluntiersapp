class ChurchSecretariesModel {
  String id;
  String name;
  List<String> members = [];

  ChurchSecretariesModel({required this.id, required this.name, required this.members});

  factory ChurchSecretariesModel.fromJson(Map<String, dynamic> json) => ChurchSecretariesModel(
        id: json["id"],
        name: json["name"],
        members: json["members"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "members": members,
      };
}
