class SocialNets {
  String? facebook;
  String? twitter;
  String? instagram;
  String? linkedin;
  String? snapchat;
  String? whatsapp;
  String? pinterest;
  String? youtube;
  String? tiktok;
  String? reddit;
  String? tumblr;
  String? skype;
  String? viber;
  String? telegram;
  String? medium;
  String? discord;
  String? quora;
  String? periscope;
  String? flickr;
  String? vine;
  String? dribbble;
  String? behance;
  String? foursquare;
  String? soundcloud;
  String? spotify;
  String? github;
  String? stackoverflow;
  String? wordpress;

  Map<String, String>? outrasRedes;

  SocialNets({
    this.facebook,
    this.twitter,
    this.instagram,
    this.linkedin,
    this.snapchat,
    this.whatsapp,
    this.pinterest,
    this.youtube,
    this.tiktok,
    this.reddit,
    this.tumblr,
    this.skype,
    this.viber,
    this.telegram,
    this.medium,
    this.discord,
    this.quora,
    this.periscope,
    this.flickr,
    this.vine,
    this.dribbble,
    this.behance,
    this.foursquare,
    this.soundcloud,
    this.spotify,
    this.github,
    this.stackoverflow,
    this.wordpress,
    this.outrasRedes,
  });

  factory SocialNets.fromJson(Map<String, dynamic> json) => SocialNets(
        facebook: json["facebook"],
        twitter: json["twitter"],
        instagram: json["instagram"],
        linkedin: json["linkedin"],
        snapchat: json["snapchat"],
        whatsapp: json["whatsapp"],
        pinterest: json["pinterest"],
        youtube: json["youtube"],
        tiktok: json["tiktok"],
        reddit: json["reddit"],
        tumblr: json["tumblr"],
        skype: json["skype"],
        viber: json["viber"],
        telegram: json["telegram"],
        medium: json["medium"],
        discord: json["discord"],
        quora: json["quora"],
        periscope: json["periscope"],
        flickr: json["flickr"],
        vine: json["vine"],
        dribbble: json["dribbble"],
        behance: json["behance"],
        foursquare: json["foursquare"],
        soundcloud: json["soundcloud"],
        spotify: json["spotify"],
        github: json["github"],
        stackoverflow: json["stackoverflow"],
        wordpress: json["wordpress"],
        outrasRedes: Map<String, String>.from(json["outrasRedes"]),
      );

  Map<String, dynamic> toJson() => {
        "facebook": facebook,
        "twitter": twitter,
        "instagram": instagram,
        "linkedin": linkedin,
        "snapchat": snapchat,
        "whatsapp": whatsapp,
        "pinterest": pinterest,
        "youtube": youtube,
        "tiktok": tiktok,
        "reddit": reddit,
        "tumblr": tumblr,
        "skype": skype,
        "viber": viber,
        "telegram": telegram,
        "medium": medium,
        "discord": discord,
        "quora": quora,
        "periscope": periscope,
        "flickr": flickr,
        "vine": vine,
        "dribbble": dribbble,
        "behance": behance,
        "foursquare": foursquare,
        "soundcloud": soundcloud,
        "spotify": spotify,
        "github": github,
        "stackoverflow": stackoverflow,
        "wordpress": wordpress,
        "outrasRedes": outrasRedes,
      };
}
