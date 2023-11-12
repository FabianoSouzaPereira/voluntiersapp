import 'package:voluntiersapp/domain/ecclesiastical.dart';
import 'package:voluntiersapp/domain/residency/address/address.dart';

class Shapherd {
  final String id;
  final String name;
  final String lastname;
  final String age;
  final String gender;
  final Ecclesiastical ecclesiastical;
  final Address address;

  Shapherd({
    required this.id,
    required this.name,
    required this.lastname,
    required this.age,
    required this.gender,
    required this.ecclesiastical,
    required this.address,
  });

  factory Shapherd.fromJson(Map<String, dynamic> json) => Shapherd(
        id: json["id"],
        name: json["name"],
        lastname: json['lastname'],
        age: json['age'],
        gender: json['gender'],
        ecclesiastical: json['ecclesiastical'],
        address: json['address'],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "lastname": lastname,
        "age": age,
        "gender": gender,
        "ecclesiastical": ecclesiastical,
        "address": address,
      };
}
