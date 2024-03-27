import 'package:equatable/equatable.dart';
import 'package:volunteersapp/data/models/authentication_cloud_firestore/type/HasType.dart';
import 'package:volunteersapp/data/models/authentication_cloud_firestore/type/Version.dart';

class Argon2Parameters extends Equatable {
  final int? hashLengthBytes;
  final HashType? hashType;
  final int? parallelism;
  final int? iterations;
  final int? memoryCostKib;
  final Version? version;
  final String? associatedData;

  Argon2Parameters({
    this.hashLengthBytes,
    this.hashType,
    this.parallelism,
    this.iterations,
    this.memoryCostKib,
    this.version,
    this.associatedData,
  });

  Argon2Parameters copyWith({
    int? hashLengthBytes,
    HashType? hashType,
    int? parallelism,
    int? iterations,
    int? memoryCostKib,
    Version? version,
    String? associatedData,
  }) {
    return Argon2Parameters(
      hashLengthBytes: hashLengthBytes ?? this.hashLengthBytes,
      hashType: hashType ?? this.hashType,
      parallelism: parallelism ?? this.parallelism,
      iterations: iterations ?? this.iterations,
      memoryCostKib: memoryCostKib ?? this.memoryCostKib,
      version: version ?? this.version,
      associatedData: associatedData ?? this.associatedData,
    );
  }

  @override
  List<Object?> get props => [
        hashLengthBytes,
        hashType,
        parallelism,
        iterations,
        memoryCostKib,
        version,
        associatedData,
      ];

  factory Argon2Parameters.fromJson(Map<String, dynamic> json) {
    return Argon2Parameters(
      hashLengthBytes: json['hashLengthBytes'],
      hashType: json['hashType'] != null
          ? HashType.values[json['hashType']]
          : null,
      parallelism: json['parallelism'],
      iterations: json['iterations'],
      memoryCostKib: json['memoryCostKib'],
      version: json['version'] != null ? Version.values[json['version']] : null,
      associatedData: json['associatedData'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'hashLengthBytes': hashLengthBytes,
      'hashType': hashType?.index,
      'parallelism': parallelism,
      'iterations': iterations,
      'memoryCostKib': memoryCostKib,
      'version': version?.index,
      'associatedData': associatedData,
    };
  }
}