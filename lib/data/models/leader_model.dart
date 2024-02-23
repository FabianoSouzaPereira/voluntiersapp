class LeaderModel {
  String id;
  String name;
  String description;
  String type;
  List ministery = [];

  LeaderModel({
    required this.id,
    required this.name,
    required this.description,
    required this.type,
  });

  factory LeaderModel.fromJson(Map<String, dynamic> json) => LeaderModel(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "type": type,
      };
}
