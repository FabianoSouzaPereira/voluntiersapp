class EventsGroup {
  String id;
  String name;
  List<String> members = [];

  EventsGroup({required this.id, required this.name, required this.members});

  factory EventsGroup.fromJson(Map<String, dynamic> json) => EventsGroup(
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
