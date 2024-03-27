import 'dart:convert';
import 'package:volunteersapp/data/models/authentication_cloud_firestore/type/UserInfo.dart';

class GetAccountInfoResponse {
    final String? kind;
    final List<UserInfo>? users;

    GetAccountInfoResponse({
        this.kind,
        this.users,
    });

    GetAccountInfoResponse copyWith({
        String? kind,
        List<UserInfo>? users,
    }) => 
        GetAccountInfoResponse(
            kind: kind ?? this.kind,
            users: users ?? this.users,
        );

    factory GetAccountInfoResponse.fromJson(Map<String, dynamic> json) => GetAccountInfoResponse(
        kind: json["kind"],
        users: json["users"] == null ? [] : List<UserInfo>.from(json["users"]!.map((x) => UserInfo.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "kind": kind,
        "users": users == null ? [] : List<dynamic>.from(users!.map((x) => x.toJson())),
    };
}

GetAccountInfoResponse getAccountInfoResponseFromJson(String str) => GetAccountInfoResponse.fromJson(json.decode(str));

String getAccountInfoResponseToJson(GetAccountInfoResponse data) => json.encode(data.toJson());
