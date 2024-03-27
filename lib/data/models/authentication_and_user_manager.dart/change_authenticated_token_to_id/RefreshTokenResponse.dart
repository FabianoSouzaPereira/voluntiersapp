import 'dart:convert';

RefreshTokenResponse refreshTokenResponseFromJson(String str) => RefreshTokenResponse.fromJson(json.decode(str));

String refreshTokenResponseToJson(RefreshTokenResponse data) => json.encode(data.toJson());

class RefreshTokenResponse {
    final String? expiresIn;
    final String? tokenType;
    final String? refreshToken;
    final String? idToken;
    final String? userId;
    final String? projectId;

    RefreshTokenResponse({
        this.expiresIn,
        this.tokenType,
        this.refreshToken,
        this.idToken,
        this.userId,
        this.projectId,
    });

    RefreshTokenResponse copyWith({
        String? expiresIn,
        String? tokenType,
        String? refreshToken,
        String? idToken,
        String? userId,
        String? projectId,
    }) => 
        RefreshTokenResponse(
            expiresIn: expiresIn ?? this.expiresIn,
            tokenType: tokenType ?? this.tokenType,
            refreshToken: refreshToken ?? this.refreshToken,
            idToken: idToken ?? this.idToken,
            userId: userId ?? this.userId,
            projectId: projectId ?? this.projectId,
        );

    factory RefreshTokenResponse.fromJson(Map<String, dynamic> json) => RefreshTokenResponse(
        expiresIn: json["expires_in"],
        tokenType: json["token_type"],
        refreshToken: json["refresh_token"],
        idToken: json["id_token"],
        userId: json["user_id"],
        projectId: json["project_id"],
    );

    Map<String, dynamic> toJson() => {
        "expires_in": expiresIn,
        "token_type": tokenType,
        "refresh_token": refreshToken,
        "id_token": idToken,
        "user_id": userId,
        "project_id": projectId,
    };
}