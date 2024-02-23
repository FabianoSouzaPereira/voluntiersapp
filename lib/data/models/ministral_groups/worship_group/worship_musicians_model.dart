class WorshipMusiciansModel {
  String id;
  String name;

  WorshipMusiciansModel({required this.id, required this.name});

  factory WorshipMusiciansModel.fromJson(Map<String, dynamic> json) => WorshipMusiciansModel(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
