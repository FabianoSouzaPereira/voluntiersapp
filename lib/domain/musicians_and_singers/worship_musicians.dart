class WorshipMusicians {
  String id;
  String name;

  WorshipMusicians({required this.id, required this.name});

  factory WorshipMusicians.fromJson(Map<String, dynamic> json) => WorshipMusicians(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
