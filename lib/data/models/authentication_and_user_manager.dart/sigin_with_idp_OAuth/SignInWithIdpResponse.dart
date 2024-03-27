import 'dart:convert';

SignInWithIdpResponse signInWithIdpResponseFromJson(String str) => SignInWithIdpResponse.fromJson(json.decode(str));

String signInWithIdpResponseToJson(SignInWithIdpResponse data) => json.encode(data.toJson());

class SignInWithIdpResponse {
    final String? federatedId;
    final String? providerId;
    final String? localId;
    final bool? emailVerified;
    final String? email;
    final String? oauthIdToken;
    final String? oauthAccessToken;
    final String? oauthTokenSecret;
    final String? firstName;
    final String? lastName;
    final String? fullName;
    final String? displayName;
    final String? idToken;
    final String? photoUrl;
    final String? refreshToken;
    final String? expiresIn;
    final String? rawUserInfo;

    SignInWithIdpResponse({
        this.federatedId,
        this.providerId,
        this.localId,
        this.emailVerified,
        this.email,
        this.oauthIdToken,
        this.oauthAccessToken,
        this.oauthTokenSecret,
        this.firstName,
        this.lastName,
        this.fullName,
        this.displayName,
        this.idToken,
        this.photoUrl,
        this.refreshToken,
        this.expiresIn,
        this.rawUserInfo,
    });

    SignInWithIdpResponse copyWith({
        String? federatedId,
        String? providerId,
        String? localId,
        bool? emailVerified,
        String? email,
        String? oauthIdToken,
        String? oauthAccessToken,
        String? oauthTokenSecret,
        String? firstName,
        String? lastName,
        String? fullName,
        String? displayName,
        String? idToken,
        String? photoUrl,
        String? refreshToken,
        String? expiresIn,
        String? rawUserInfo,
    }) => 
        SignInWithIdpResponse(
            federatedId: federatedId ?? this.federatedId,
            providerId: providerId ?? this.providerId,
            localId: localId ?? this.localId,
            emailVerified: emailVerified ?? this.emailVerified,
            email: email ?? this.email,
            oauthIdToken: oauthIdToken ?? this.oauthIdToken,
            oauthAccessToken: oauthAccessToken ?? this.oauthAccessToken,
            oauthTokenSecret: oauthTokenSecret ?? this.oauthTokenSecret,
            firstName: firstName ?? this.firstName,
            lastName: lastName ?? this.lastName,
            fullName: fullName ?? this.fullName,
            displayName: displayName ?? this.displayName,
            idToken: idToken ?? this.idToken,
            photoUrl: photoUrl ?? this.photoUrl,
            refreshToken: refreshToken ?? this.refreshToken,
            expiresIn: expiresIn ?? this.expiresIn,
            rawUserInfo: rawUserInfo ?? this.rawUserInfo,
        );

    factory SignInWithIdpResponse.fromJson(Map<String, dynamic> json) => SignInWithIdpResponse(
        federatedId: json["federatedId"],
        providerId: json["providerId"],
        localId: json["localId"],
        emailVerified: json["emailVerified"],
        email: json["email"],
        oauthIdToken: json["oauthIdToken"],
        oauthAccessToken: json["oauthAccessToken"],
        oauthTokenSecret: json["oauthTokenSecret"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        fullName: json["fullName"],
        displayName: json["displayName"],
        idToken: json["idToken"],
        photoUrl: json["photoUrl"],
        refreshToken: json["refreshToken"],
        expiresIn: json["expiresIn"],
        rawUserInfo: json["rawUserInfo"],
    );

    Map<String, dynamic> toJson() => {
        "federatedId": federatedId,
        "providerId": providerId,
        "localId": localId,
        "emailVerified": emailVerified,
        "email": email,
        "oauthIdToken": oauthIdToken,
        "oauthAccessToken": oauthAccessToken,
        "oauthTokenSecret": oauthTokenSecret,
        "firstName": firstName,
        "lastName": lastName,
        "fullName": fullName,
        "displayName": displayName,
        "idToken": idToken,
        "photoUrl": photoUrl,
        "refreshToken": refreshToken,
        "expiresIn": expiresIn,
        "rawUserInfo": rawUserInfo,
    };
}
