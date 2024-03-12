import 'dart:convert';

class Lookup {
    final String? idToken;
    final List<String>? localId;
    final List<String>? email;
    final String? delegatedProjectNumber;
    final List<String>? phoneNumber;
    final List<FederatedUserId>? federatedUserId;
    final String? tenantId;
    final String? targetProjectId;
    final List<String>? initialEmail;

    Lookup({
        this.idToken,
        this.localId,
        this.email,
        this.delegatedProjectNumber,
        this.phoneNumber,
        this.federatedUserId,
        this.tenantId,
        this.targetProjectId,
        this.initialEmail,
    });

    Lookup copyWith({
        String? idToken,
        List<String>? localId,
        List<String>? email,
        String? delegatedProjectNumber,
        List<String>? phoneNumber,
        List<FederatedUserId>? federatedUserId,
        String? tenantId,
        String? targetProjectId,
        List<String>? initialEmail,
    }) => 
        Lookup(
            idToken: idToken ?? this.idToken,
            localId: localId ?? this.localId,
            email: email ?? this.email,
            delegatedProjectNumber: delegatedProjectNumber ?? this.delegatedProjectNumber,
            phoneNumber: phoneNumber ?? this.phoneNumber,
            federatedUserId: federatedUserId ?? this.federatedUserId,
            tenantId: tenantId ?? this.tenantId,
            targetProjectId: targetProjectId ?? this.targetProjectId,
            initialEmail: initialEmail ?? this.initialEmail,
        );

    factory Lookup.fromJson(Map<String, dynamic> json) => Lookup(
        idToken: json["idToken"],
        localId: json["localId"] == null ? [] : List<String>.from(json["localId"]!.map((x) => x)),
        email: json["email"] == null ? [] : List<String>.from(json["email"]!.map((x) => x)),
        delegatedProjectNumber: json["delegatedProjectNumber"],
        phoneNumber: json["phoneNumber"] == null ? [] : List<String>.from(json["phoneNumber"]!.map((x) => x)),
        federatedUserId: json["federatedUserId"] == null ? [] : List<FederatedUserId>.from(json["federatedUserId"]!.map((x) => FederatedUserId.fromJson(x))),
        tenantId: json["tenantId"],
        targetProjectId: json["targetProjectId"],
        initialEmail: json["initialEmail"] == null ? [] : List<String>.from(json["initialEmail"]!.map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "idToken": idToken,
        "localId": localId == null ? [] : List<dynamic>.from(localId!.map((x) => x)),
        "email": email == null ? [] : List<dynamic>.from(email!.map((x) => x)),
        "delegatedProjectNumber": delegatedProjectNumber,
        "phoneNumber": phoneNumber == null ? [] : List<dynamic>.from(phoneNumber!.map((x) => x)),
        "federatedUserId": federatedUserId == null ? [] : List<dynamic>.from(federatedUserId!.map((x) => x.toJson())),
        "tenantId": tenantId,
        "targetProjectId": targetProjectId,
        "initialEmail": initialEmail == null ? [] : List<dynamic>.from(initialEmail!.map((x) => x)),
    };
}

class FederatedUserId {
    final String? federatedUserIdentifier;

    FederatedUserId({
        this.federatedUserIdentifier,
    });

    FederatedUserId copyWith({
        String? federatedUserIdentifier,
    }) => 
        FederatedUserId(
            federatedUserIdentifier: federatedUserIdentifier ?? this.federatedUserIdentifier,
        );

    factory FederatedUserId.fromJson(Map<String, dynamic> json) => FederatedUserId(
        federatedUserIdentifier: json["federatedUserIdentifier"],
    );

    Map<String, dynamic> toJson() => {
        "federatedUserIdentifier": federatedUserIdentifier,
    };
}

Lookup lookupFromJson(String str) => Lookup.fromJson(json.decode(str));

String lookupToJson(Lookup data) => json.encode(data.toJson());