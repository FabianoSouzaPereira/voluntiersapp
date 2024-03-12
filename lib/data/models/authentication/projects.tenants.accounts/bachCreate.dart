import 'dart:convert';
import 'package:volunteersapp/data/models/authentication/type/Argon2Parameters.dart';
import 'package:volunteersapp/data/models/authentication/type/UserInfo.dart';

class ProjectsTenantsBatchCreate {
  final String? hashAlgorithm;
  final String? signerKey;
  final String? saltSeparator;
  final int? rounds;
  final int? memoryCost;
  final List<UserInfo>? users;
  final String? delegatedProjectNumber;
  final bool? sanityCheck;
  final bool? allowOverwrite;
  final int? cpuMemCost;
  final int? parallelization;
  final int? blockSize;
  final int? dkLen;
  final String? passwordHashOrder;
  final Argon2Parameters? argon2Parameters;

  ProjectsTenantsBatchCreate({
    this.hashAlgorithm,
    this.signerKey,
    this.saltSeparator,
    this.rounds,
    this.memoryCost,
    this.users,
    this.delegatedProjectNumber,
    this.sanityCheck,
    this.allowOverwrite,
    this.cpuMemCost,
    this.parallelization,
    this.blockSize,
    this.dkLen,
    this.passwordHashOrder,
    this.argon2Parameters,
  });

  factory ProjectsTenantsBatchCreate.fromJson(Map<String, dynamic> json) {
    return ProjectsTenantsBatchCreate(
      hashAlgorithm: json["hashAlgorithm"],
      signerKey: json["signerKey"],
      saltSeparator: json["saltSeparator"],
      rounds: json["rounds"],
      memoryCost: json["memoryCost"],
      users: json["users"] == null ? [] : List<UserInfo>.from(json["users"].map((x) => UserInfo.fromJson(x))),
      delegatedProjectNumber: json["delegatedProjectNumber"],
      sanityCheck: json["sanityCheck"],
      allowOverwrite: json["allowOverwrite"],
      cpuMemCost: json["cpuMemCost"],
      parallelization: json["parallelization"],
      blockSize: json["blockSize"],
      dkLen: json["dkLen"],
      passwordHashOrder: json["passwordHashOrder"],
      argon2Parameters: json["argon2Parameters"] == null ? null : Argon2Parameters.fromJson(json["argon2Parameters"]),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "hashAlgorithm": hashAlgorithm,
      "signerKey": signerKey,
      "saltSeparator": saltSeparator,
      "rounds": rounds,
      "memoryCost": memoryCost,
      "users": users == null ? [] : List<dynamic>.from(users!.map((x) => x.toJson())),
      "delegatedProjectNumber": delegatedProjectNumber,
      "sanityCheck": sanityCheck,
      "allowOverwrite": allowOverwrite,
      "cpuMemCost": cpuMemCost,
      "parallelization": parallelization,
      "blockSize": blockSize,
      "dkLen": dkLen,
      "passwordHashOrder": passwordHashOrder,
      "argon2Parameters": argon2Parameters?.toJson(),
    };
  }
}

// Utility functions for encoding and decoding
String projectsTenantsBatchCreateToJson(ProjectsTenantsBatchCreate data) => json.encode(data.toJson());
ProjectsTenantsBatchCreate projectsTenantsBatchCreateFromJson(String str) => ProjectsTenantsBatchCreate.fromJson(json.decode(str));
