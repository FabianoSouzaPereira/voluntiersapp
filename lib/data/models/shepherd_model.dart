import 'package:voluntiersapp/data/models/ecclesiastical_model.dart';
import 'package:voluntiersapp/data/models/residency/address_model.dart';

class ShapherdModel {
  final String id;
  final String name;
  final String lastname;
  final String age;
  final String gender;
  final EcclesiasticalModel ecclesiastical;
  final Address address;

  ShapherdModel({
    required this.id,
    required this.name,
    required this.lastname,
    required this.age,
    required this.gender,
    required this.ecclesiastical,
    required this.address,
  });

  factory ShapherdModel.fromJson(Map<String, dynamic> json) => Shapherd(
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
