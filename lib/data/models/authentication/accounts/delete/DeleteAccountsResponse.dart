import 'dart:convert';

class DeleteAccountResponse {
    final String? kind;

    DeleteAccountResponse({
        this.kind,
    });

    DeleteAccountResponse copyWith({
        String? kind,
    }) => 
        DeleteAccountResponse(
            kind: kind ?? this.kind,
        );

    factory DeleteAccountResponse.fromJson(Map<String, dynamic> json) => DeleteAccountResponse(
        kind: json["kind"],
    );

    Map<String, dynamic> toJson() => {
        "kind": kind,
    };
}

DeleteAccountResponse deleteAccountResponseFromJson(String str) => DeleteAccountResponse.fromJson(json.decode(str));

String deleteAccountResponseToJson(DeleteAccountResponse data) => json.encode(data.toJson());
