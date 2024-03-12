import 'dart:convert';

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