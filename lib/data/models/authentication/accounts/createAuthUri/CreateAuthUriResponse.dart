import 'dart:convert';

class CreateAuthUriResponse {
    final String? kind;
    final String? authUri;
    final List<String>? allProviders;
    final bool? registered;
    final String? providerId;
    final bool? forExistingProvider;
    final bool? captchaRequired;
    final String? sessionId;
    final List<String>? signinMethods;

    CreateAuthUriResponse({
        this.kind,
        this.authUri,
        this.allProviders,
        this.registered,
        this.providerId,
        this.forExistingProvider,
        this.captchaRequired,
        this.sessionId,
        this.signinMethods,
    });

    CreateAuthUriResponse copyWith({
        String? kind,
        String? authUri,
        List<String>? allProviders,
        bool? registered,
        String? providerId,
        bool? forExistingProvider,
        bool? captchaRequired,
        String? sessionId,
        List<String>? signinMethods,
    }) => 
        CreateAuthUriResponse(
            kind: kind ?? this.kind,
            authUri: authUri ?? this.authUri,
            allProviders: allProviders ?? this.allProviders,
            registered: registered ?? this.registered,
            providerId: providerId ?? this.providerId,
            forExistingProvider: forExistingProvider ?? this.forExistingProvider,
            captchaRequired: captchaRequired ?? this.captchaRequired,
            sessionId: sessionId ?? this.sessionId,
            signinMethods: signinMethods ?? this.signinMethods,
        );

    factory CreateAuthUriResponse.fromJson(Map<String, dynamic> json) => CreateAuthUriResponse(
        kind: json["kind"],
        authUri: json["authUri"],
        allProviders: json["allProviders"] == null ? [] : List<String>.from(json["allProviders"]!.map((x) => x)),
        registered: json["registered"],
        providerId: json["providerId"],
        forExistingProvider: json["forExistingProvider"],
        captchaRequired: json["captchaRequired"],
        sessionId: json["sessionId"],
        signinMethods: json["signinMethods"] == null ? [] : List<String>.from(json["signinMethods"]!.map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "kind": kind,
        "authUri": authUri,
        "allProviders": allProviders == null ? [] : List<dynamic>.from(allProviders!.map((x) => x)),
        "registered": registered,
        "providerId": providerId,
        "forExistingProvider": forExistingProvider,
        "captchaRequired": captchaRequired,
        "sessionId": sessionId,
        "signinMethods": signinMethods == null ? [] : List<dynamic>.from(signinMethods!.map((x) => x)),
    };
}

CreateAuthUriResponse createAuthUriResponseFromJson(String str) => CreateAuthUriResponse.fromJson(json.decode(str));

String createAuthUriResponseToJson(CreateAuthUriResponse data) => json.encode(data.toJson());
