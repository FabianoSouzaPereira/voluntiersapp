import 'dart:convert';

class DeleteAccountsRequest {
    final String? localId;
    final String? delegatedProjectNumber;
    final String? idToken;
    final String? tenantId;
    final String? targetProjectId;

    DeleteAccountsRequest({
        this.localId,
        this.delegatedProjectNumber,
        this.idToken,
        this.tenantId,
        this.targetProjectId,
    });

    DeleteAccountsRequest copyWith({
        String? localId,
        String? delegatedProjectNumber,
        String? idToken,
        String? tenantId,
        String? targetProjectId,
    }) => 
        DeleteAccountsRequest(
            localId: localId ?? this.localId,
            delegatedProjectNumber: delegatedProjectNumber ?? this.delegatedProjectNumber,
            idToken: idToken ?? this.idToken,
            tenantId: tenantId ?? this.tenantId,
            targetProjectId: targetProjectId ?? this.targetProjectId,
        );

    factory DeleteAccountsRequest.fromJson(Map<String, dynamic> json) => DeleteAccountsRequest(
        localId: json["localId"],
        delegatedProjectNumber: json["delegatedProjectNumber"],
        idToken: json["idToken"],
        tenantId: json["tenantId"],
        targetProjectId: json["targetProjectId"],
    );

    Map<String, dynamic> toJson() => {
        "localId": localId,
        "delegatedProjectNumber": delegatedProjectNumber,
        "idToken": idToken,
        "tenantId": tenantId,
        "targetProjectId": targetProjectId,
    };
}

DeleteAccountsRequest deleteFromJson(String str) => DeleteAccountsRequest.fromJson(json.decode(str));

String deleteToJson(DeleteAccountsRequest data) => json.encode(data.toJson());
