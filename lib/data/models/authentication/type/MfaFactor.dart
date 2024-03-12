import 'dart:convert';

class MfaFactor {
    final String? displayName;
    final String? phoneInfo;

    MfaFactor({
        this.displayName,
        this.phoneInfo,
    });

    MfaFactor copyWith({
        String? displayName,
        String? phoneInfo,
    }) => 
        MfaFactor(
            displayName: displayName ?? this.displayName,
            phoneInfo: phoneInfo ?? this.phoneInfo,
        );

    factory MfaFactor.fromJson(Map<String, dynamic> json) => MfaFactor(
        displayName: json["displayName"],
        phoneInfo: json["phoneInfo"],
    );

    Map<String, dynamic> toJson() => {
        "displayName": displayName,
        "phoneInfo": phoneInfo,
    };
}

MfaFactor mfaFactorFromJson(String str) => MfaFactor.fromJson(json.decode(str));

String mfaFactorToJson(MfaFactor data) => json.encode(data.toJson());
