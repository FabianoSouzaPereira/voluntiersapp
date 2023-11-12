class ChurchEventsOrganizers {
  String id;
  String name;

  ChurchEventsOrganizers({required this.id, required this.name});

  factory ChurchEventsOrganizers.fromJson(Map<String, dynamic> json) => ChurchEventsOrganizers(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
