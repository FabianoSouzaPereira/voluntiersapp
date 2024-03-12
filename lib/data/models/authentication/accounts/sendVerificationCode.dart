import 'dart:convert';

class SendVerificationCode {
    final String? phoneNumber;
    final String? iosReceipt;
    final String? iosSecret;
    final String? recaptchaToken;
    final String? tenantId;
    final AutoRetrievalInfo? autoRetrievalInfo;
    final String? safetyNetToken;
    final String? playIntegrityToken;

    SendVerificationCode({
        this.phoneNumber,
        this.iosReceipt,
        this.iosSecret,
        this.recaptchaToken,
        this.tenantId,
        this.autoRetrievalInfo,
        this.safetyNetToken,
        this.playIntegrityToken,
    });

    SendVerificationCode copyWith({
        String? phoneNumber,
        String? iosReceipt,
        String? iosSecret,
        String? recaptchaToken,
        String? tenantId,
        AutoRetrievalInfo? autoRetrievalInfo,
        String? safetyNetToken,
        String? playIntegrityToken,
    }) => 
        SendVerificationCode(
            phoneNumber: phoneNumber ?? this.phoneNumber,
            iosReceipt: iosReceipt ?? this.iosReceipt,
            iosSecret: iosSecret ?? this.iosSecret,
            recaptchaToken: recaptchaToken ?? this.recaptchaToken,
            tenantId: tenantId ?? this.tenantId,
            autoRetrievalInfo: autoRetrievalInfo ?? this.autoRetrievalInfo,
            safetyNetToken: safetyNetToken ?? this.safetyNetToken,
            playIntegrityToken: playIntegrityToken ?? this.playIntegrityToken,
        );

    factory SendVerificationCode.fromJson(Map<String, dynamic> json) => SendVerificationCode(
        phoneNumber: json["phoneNumber"],
        iosReceipt: json["iosReceipt"],
        iosSecret: json["iosSecret"],
        recaptchaToken: json["recaptchaToken"],
        tenantId: json["tenantId"],
        autoRetrievalInfo: json["autoRetrievalInfo"] == null ? null : AutoRetrievalInfo.fromJson(json["autoRetrievalInfo"]),
        safetyNetToken: json["safetyNetToken"],
        playIntegrityToken: json["playIntegrityToken"],
    );

    Map<String, dynamic> toJson() => {
        "phoneNumber": phoneNumber,
        "iosReceipt": iosReceipt,
        "iosSecret": iosSecret,
        "recaptchaToken": recaptchaToken,
        "tenantId": tenantId,
        "autoRetrievalInfo": autoRetrievalInfo?.toJson(),
        "safetyNetToken": safetyNetToken,
        "playIntegrityToken": playIntegrityToken,
    };
}

class AutoRetrievalInfo {
    final String? autoRetrievalInfo;

    AutoRetrievalInfo({
        this.autoRetrievalInfo,
    });

    AutoRetrievalInfo copyWith({
        String? autoRetrievalInfo,
    }) => 
        AutoRetrievalInfo(
            autoRetrievalInfo: autoRetrievalInfo ?? this.autoRetrievalInfo,
        );

    factory AutoRetrievalInfo.fromJson(Map<String, dynamic> json) => AutoRetrievalInfo(
        autoRetrievalInfo: json["autoRetrievalInfo"],
    );

    Map<String, dynamic> toJson() => {
        "autoRetrievalInfo": autoRetrievalInfo,
    };
}

SendVerificationCode sendVerificationCodeFromJson(String str) => SendVerificationCode.fromJson(json.decode(str));

String sendVerificationCodeToJson(SendVerificationCode data) => json.encode(data.toJson());
