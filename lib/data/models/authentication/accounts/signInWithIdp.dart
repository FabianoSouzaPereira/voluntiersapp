import 'dart:convert';

class SignInWithIdp {
    final String requestUri;
    final String? postBody;
    final String? pendingIdToken;
    final bool? returnRefreshToken;
    final String? sessionId;
    final String? delegatedProjectNumber;
    final String? idToken;
    final bool? returnSecureToken;
    final bool? returnIdpCredential;
    final bool? autoCreate;
    final String? tenantId;
    final String? pendingToken;

    SignInWithIdp({
        required this.requestUri,
        this.postBody,
        this.pendingIdToken,
        this.returnRefreshToken,
        this.sessionId,
        this.delegatedProjectNumber,
        this.idToken,
        this.returnSecureToken,
        this.returnIdpCredential,
        this.autoCreate,
        this.tenantId,
        this.pendingToken,
    });

    SignInWithIdp copyWith({
        String? requestUri,
        String? postBody,
        String? pendingIdToken,
        bool? returnRefreshToken,
        String? sessionId,
        String? delegatedProjectNumber,
        String? idToken,
        bool? returnSecureToken,
        bool? returnIdpCredential,
        bool? autoCreate,
        String? tenantId,
        String? pendingToken,
    }) => 
        SignInWithIdp(
            requestUri: requestUri ?? this.requestUri,
            postBody: postBody ?? this.postBody,
            pendingIdToken: pendingIdToken ?? this.pendingIdToken,
            returnRefreshToken: returnRefreshToken ?? this.returnRefreshToken,
            sessionId: sessionId ?? this.sessionId,
            delegatedProjectNumber: delegatedProjectNumber ?? this.delegatedProjectNumber,
            idToken: idToken ?? this.idToken,
            returnSecureToken: returnSecureToken ?? this.returnSecureToken,
            returnIdpCredential: returnIdpCredential ?? this.returnIdpCredential,
            autoCreate: autoCreate ?? this.autoCreate,
            tenantId: tenantId ?? this.tenantId,
            pendingToken: pendingToken ?? this.pendingToken,
        );

    factory SignInWithIdp.fromJson(Map<String, dynamic> json) => SignInWithIdp(
        requestUri: json["requestUri"],
        postBody: json["postBody"],
        pendingIdToken: json["pendingIdToken"],
        returnRefreshToken: json["returnRefreshToken"],
        sessionId: json["sessionId"],
        delegatedProjectNumber: json["delegatedProjectNumber"],
        idToken: json["idToken"],
        returnSecureToken: json["returnSecureToken"],
        returnIdpCredential: json["returnIdpCredential"],
        autoCreate: json["autoCreate"],
        tenantId: json["tenantId"],
        pendingToken: json["pendingToken"],
    );

    Map<String, dynamic> toJson() => {
        "requestUri": requestUri,
        "postBody": postBody,
        "pendingIdToken": pendingIdToken,
        "returnRefreshToken": returnRefreshToken,
        "sessionId": sessionId,
        "delegatedProjectNumber": delegatedProjectNumber,
        "idToken": idToken,
        "returnSecureToken": returnSecureToken,
        "returnIdpCredential": returnIdpCredential,
        "autoCreate": autoCreate,
        "tenantId": tenantId,
        "pendingToken": pendingToken,
    };
}

SignInWithIdp signInWithIdpFromJson(String str) => SignInWithIdp.fromJson(json.decode(str));

String signInWithIdpToJson(SignInWithIdp data) => json.encode(data.toJson());
