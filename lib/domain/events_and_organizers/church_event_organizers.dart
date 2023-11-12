class ChurchEventsOrganizers {
  String id;
  String name;
  List<String> members = [];

  ChurchEventsOrganizers({required this.id, required this.name, required this.members});

  factory ChurchEventsOrganizers.fromJson(Map<String, dynamic> json) => ChurchEventsOrganizers(
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
