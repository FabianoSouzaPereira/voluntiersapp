class MusicSingers {
  String id;
  String name;

  MusicSingers({required this.id, required this.name});

  factory MusicSingers.fromJson(Map<String, dynamic> json) => MusicSingers(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
