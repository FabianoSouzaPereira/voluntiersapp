// To parse this JSON data, do
//
//     final signInWithGameCenter = signInWithGameCenterFromJson(jsonString);

import 'dart:convert';

SignInWithGameCenter signInWithGameCenterFromJson(String str) => SignInWithGameCenter.fromJson(json.decode(str));

String signInWithGameCenterToJson(SignInWithGameCenter data) => json.encode(data.toJson());

class SignInWithGameCenter {
    final String playerId;
    final String publicKeyUrl;
    final String signature;
    final String salt;
    final String? timestamp;
    final String? idToken;
    final String? displayName;
    final String? tenantId;
    final String? teamPlayerId;
    final String? gamePlayerId;

    SignInWithGameCenter({
        required this.playerId,
        required this.publicKeyUrl,
        required this.signature,
        required this.salt,
        this.timestamp,
        this.idToken,
        this.displayName,
        this.tenantId,
        this.teamPlayerId,
        this.gamePlayerId,
    });

    SignInWithGameCenter copyWith({
        String? playerId,
        String? publicKeyUrl,
        String? signature,
        String? salt,
        String? timestamp,
        String? idToken,
        String? displayName,
        String? tenantId,
        String? teamPlayerId,
        String? gamePlayerId,
    }) => 
        SignInWithGameCenter(
            playerId: playerId ?? this.playerId,
            publicKeyUrl: publicKeyUrl ?? this.publicKeyUrl,
            signature: signature ?? this.signature,
            salt: salt ?? this.salt,
            timestamp: timestamp ?? this.timestamp,
            idToken: idToken ?? this.idToken,
            displayName: displayName ?? this.displayName,
            tenantId: tenantId ?? this.tenantId,
            teamPlayerId: teamPlayerId ?? this.teamPlayerId,
            gamePlayerId: gamePlayerId ?? this.gamePlayerId,
        );

    factory SignInWithGameCenter.fromJson(Map<String, dynamic> json) => SignInWithGameCenter(
        playerId: json["playerId"],
        publicKeyUrl: json["publicKeyUrl"],
        signature: json["signature"],
        salt: json["salt"],
        timestamp: json["timestamp"],
        idToken: json["idToken"],
        displayName: json["displayName"],
        tenantId: json["tenantId"],
        teamPlayerId: json["teamPlayerId"],
        gamePlayerId: json["gamePlayerId"],
    );

    Map<String, dynamic> toJson() => {
        "playerId": playerId,
        "publicKeyUrl": publicKeyUrl,
        "signature": signature,
        "salt": salt,
        "timestamp": timestamp,
        "idToken": idToken,
        "displayName": displayName,
        "tenantId": tenantId,
        "teamPlayerId": teamPlayerId,
        "gamePlayerId": gamePlayerId,
    };
}
