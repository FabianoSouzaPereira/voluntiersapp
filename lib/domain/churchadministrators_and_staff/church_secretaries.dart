class ChurchSecretaries {
  String id;
  String name;

  ChurchSecretaries({required this.id, required this.name});

  factory ChurchSecretaries.fromJson(Map<String, dynamic> json) => ChurchSecretaries(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
