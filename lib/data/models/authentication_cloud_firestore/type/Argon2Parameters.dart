import 'package:volunteersapp/data/models/authentication_cloud_firestore/type/HasType.dart';
import 'package:volunteersapp/data/models/authentication_cloud_firestore/type/Version.dart';

class Argon2Parameters {
  int? hashLengthBytes;
  HashType? hashType;
  int? parallelism;
  int? iterations;
  int? memoryCostKib;
  Version? version;
  String? associatedData;

  Argon2Parameters({
    this.hashLengthBytes = 0,
    this.hashType = HashType.HASH_TYPE_UNSPECIFIED,
    this.parallelism = 0,
    this.iterations = 0,
    this.memoryCostKib = 0,
    this.version = Version.VERSION_UNSPECIFIED,
    this.associatedData = "",
  });

  Map<String, dynamic> toJson() {
      final Map<String, dynamic> data = <String, dynamic>{};
      data['hashLengthBytes'] = hashLengthBytes;
      if (hashType != null && hashType != HashType.HASH_TYPE_UNSPECIFIED) {
        data['hashType'] = hashType!.index;
      }
      data['parallelism'] = parallelism;
      data['iterations'] = iterations;
      data['memoryCostKib'] = memoryCostKib;
      if (version != null && version != Version.VERSION_UNSPECIFIED) {
        data['version'] = version!.index;
      }
      data['associatedData'] = associatedData;
      return data;
  }

  Argon2Parameters.fromJson(Map<String, dynamic> json) {
    hashLengthBytes = json['hashLengthBytes'] ?? 0; 
    hashType = json['hashType'] != null
        ? HashType.values[json['hashType']]
        : HashType.HASH_TYPE_UNSPECIFIED; 
    parallelism = json['parallelism'] ?? 0; 
    iterations = json['iterations'] ?? 0; 
    memoryCostKib = json['memoryCostKib'] ?? 0; 
    version = json['version'] != null
        ? Version.values[json['version']]
        : Version.VERSION_UNSPECIFIED; 
    associatedData = json['associatedData'] ?? "";
  }
}