class YouthGoupModel {
  String id;
  String name;
  List<String> members = [];

  YouthGoupModel({required this.id, required this.name, required this.members});

  factory YouthGoupModel.fromJson(Map<String, dynamic> json) => YouthGoupModel(
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
