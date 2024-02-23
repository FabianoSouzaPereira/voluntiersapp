class WomensMinistryModel {
  String id;
  String name;
  List<String> members = [];

  WomensMinistryModel({required this.id, required this.name, required this.members});

  factory WomensMinistryModel.fromJson(Map<String, dynamic> json) => WomensMinistryModel(
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
