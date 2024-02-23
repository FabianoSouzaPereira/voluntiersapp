class MusicSingersModel {
  String id;
  String name;

  MusicSingersModel({required this.id, required this.name});

  factory MusicSingersModel.fromJson(Map<String, dynamic> json) => MusicSingersModel(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
