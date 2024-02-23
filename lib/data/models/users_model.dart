import 'package:voluntiersapp/domain/entities/user_entity.dart';

class UserModel {
  String id;
  String name;
  String description;
  String type;

  UserModel({
    required this.id,
    required this.name,
    required this.description,
    required this.type,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => User(
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

/* Adding the ability to convert to UserEntity to UserModel */

extension UserModelX on UserModel {
  UserEntity toEntity() {
    return UserEntity(
      id: id,
      name: name,
      description: description,
      type: type,
    );
  }
}

