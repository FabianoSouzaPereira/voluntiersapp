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
