import 'dart:convert';

class IssueSamlResponseResponse {
    final String? samlResponse;
    final String? acsEndpoint;
    final String? relayState;
    final String? email;
    final String? firstName;
    final String? lastName;
    final bool? isNewUser;

    IssueSamlResponseResponse({
        this.samlResponse,
        this.acsEndpoint,
        this.relayState,
        this.email,
        this.firstName,
        this.lastName,
        this.isNewUser,
    });

    IssueSamlResponseResponse copyWith({
        String? samlResponse,
        String? acsEndpoint,
        String? relayState,
        String? email,
        String? firstName,
        String? lastName,
        bool? isNewUser,
    }) => 
        IssueSamlResponseResponse(
            samlResponse: samlResponse ?? this.samlResponse,
            acsEndpoint: acsEndpoint ?? this.acsEndpoint,
            relayState: relayState ?? this.relayState,
            email: email ?? this.email,
            firstName: firstName ?? this.firstName,
            lastName: lastName ?? this.lastName,
            isNewUser: isNewUser ?? this.isNewUser,
        );

    factory IssueSamlResponseResponse.fromJson(Map<String, dynamic> json) => IssueSamlResponseResponse(
        samlResponse: json["samlResponse"],
        acsEndpoint: json["acsEndpoint"],
        relayState: json["relayState"],
        email: json["email"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        isNewUser: json["isNewUser"],
    );

    Map<String, dynamic> toJson() => {
        "samlResponse": samlResponse,
        "acsEndpoint": acsEndpoint,
        "relayState": relayState,
        "email": email,
        "firstName": firstName,
        "lastName": lastName,
        "isNewUser": isNewUser,
    };
}

IssueSamlResponseResponse issueSamlResponseResponseFromJson(String str) => IssueSamlResponseResponse.fromJson(json.decode(str));

String issueSamlResponseResponseToJson(IssueSamlResponseResponse data) => json.encode(data.toJson());
