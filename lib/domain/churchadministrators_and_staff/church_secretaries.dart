class ChurchSecretaries {
  String id;
  String name;
  List<String> members = [];

  ChurchSecretaries({required this.id, required this.name, required this.members});

  factory ChurchSecretaries.fromJson(Map<String, dynamic> json) => ChurchSecretaries(
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
