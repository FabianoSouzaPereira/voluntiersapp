class EventsGroupModel {
  String id;
  String name;
  List<String> members = [];

  EventsGroupModel({required this.id, required this.name, required this.members});

  factory EventsGroupModel.fromJson(Map<String, dynamic> json) => EventsGroupModel(
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
