class ChilDrens {
  String id;
  String name;
  List<String> members = [];

  ChilDrens({required this.id, required this.name, required this.members});

  factory ChilDrens.fromJson(Map<String, dynamic> json) => ChilDrens(
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
