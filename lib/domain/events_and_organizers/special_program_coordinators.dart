class SpecialProgramsCoordenators {
  String id;
  String name;

  SpecialProgramsCoordenators({required this.id, required this.name});

  factory SpecialProgramsCoordenators.fromJson(Map<String, dynamic> json) => SpecialProgramsCoordenators(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
