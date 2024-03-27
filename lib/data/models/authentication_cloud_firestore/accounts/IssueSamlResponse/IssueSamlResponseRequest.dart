import 'dart:convert';

class IssueSamlResponseRequest {
    final String? rpId;
    final String? idToken;
    final String? samlAppEntityId;

    IssueSamlResponseRequest({
        this.rpId,
        this.idToken,
        this.samlAppEntityId,
    });

    IssueSamlResponseRequest copyWith({
        String? rpId,
        String? idToken,
        String? samlAppEntityId,
    }) => 
        IssueSamlResponseRequest(
            rpId: rpId ?? this.rpId,
            idToken: idToken ?? this.idToken,
            samlAppEntityId: samlAppEntityId ?? this.samlAppEntityId,
        );

    factory IssueSamlResponseRequest.fromJson(Map<String, dynamic> json) => IssueSamlResponseRequest(
        rpId: json["rpId"],
        idToken: json["idToken"],
        samlAppEntityId: json["samlAppEntityId"],
    );

    Map<String, dynamic> toJson() => {
        "rpId": rpId,
        "idToken": idToken,
        "samlAppEntityId": samlAppEntityId,
    };
}

IssueSamlResponseRequest issueSamlResponseFromJson(String str) => IssueSamlResponseRequest.fromJson(json.decode(str));

String issueSamlResponseToJson(IssueSamlResponseRequest data) => json.encode(data.toJson());
