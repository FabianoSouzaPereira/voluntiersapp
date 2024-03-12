import 'dart:convert';

class VerifyIosClientRequest {
    final String? appToken;
    final bool? isSandbox;

    VerifyIosClientRequest({
        this.appToken,
        this.isSandbox,
    });

    VerifyIosClientRequest copyWith({
        String? appToken,
        bool? isSandbox,
    }) => 
        VerifyIosClientRequest(
            appToken: appToken ?? this.appToken,
            isSandbox: isSandbox ?? this.isSandbox,
        );

    factory VerifyIosClientRequest.fromJson(Map<String, dynamic> json) => VerifyIosClientRequest(
        appToken: json["appToken"],
        isSandbox: json["isSandbox"],
    );

    Map<String, dynamic> toJson() => {
        "appToken": appToken,
        "isSandbox": isSandbox,
    };
}

VerifyIosClientRequest verifyIosClientFromJson(String str) => VerifyIosClientRequest.fromJson(json.decode(str));

String verifyIosClientToJson(VerifyIosClientRequest data) => json.encode(data.toJson());


class VerifyIosClientResponse {
    final String receipt;
    final String suggestedTimeout;

    VerifyIosClientResponse({
        required this.receipt,
        required this.suggestedTimeout,
    });

    factory VerifyIosClientResponse.fromJson(Map<String, dynamic> json) => VerifyIosClientResponse(
        receipt: json["receipt"],
        suggestedTimeout: json["suggestedTimeout"],
    );

    Map<String, dynamic> toJson() => {
        "receipt": receipt,
        "suggestedTimeout": suggestedTimeout,
    };
}

VerifyIosClientResponse verifyIosClientResponseFromJson(String str) => VerifyIosClientResponse.fromJson(json.decode(str));

String verifyIosClientResponseToJson(VerifyIosClientResponse data) => json.encode(data.toJson());