import 'dart:convert';

RefreshTokenRequest refreshTokenRequestFromJson(String str) => RefreshTokenRequest.fromJson(json.decode(str));

String refreshTokenRequestToJson(RefreshTokenRequest data) => json.encode(data.toJson());

class RefreshTokenRequest {
    final String? grantType;
    final String? refreshToken;

    RefreshTokenRequest({
        this.grantType,
        this.refreshToken,
    });

    RefreshTokenRequest copyWith({
        String? grantType,
        String? refreshToken,
    }) => 
        RefreshTokenRequest(
            grantType: grantType ?? this.grantType,
            refreshToken: refreshToken ?? this.refreshToken,
        );

    factory RefreshTokenRequest.fromJson(Map<String, dynamic> json) => RefreshTokenRequest(
        grantType: json["grant_type"],
        refreshToken: json["refresh_token"],
    );

    Map<String, dynamic> toJson() => {
        "grant_type": grantType,
        "refresh_token": refreshToken,
    };
}