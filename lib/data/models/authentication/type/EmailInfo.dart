import 'dart:convert';

class EmailInfo {
    final String? emailAddress;

    EmailInfo({
        this.emailAddress,
    });

    EmailInfo copyWith({
        String? emailAddress,
    }) => 
        EmailInfo(
            emailAddress: emailAddress ?? this.emailAddress,
        );

    factory EmailInfo.fromJson(Map<String, dynamic> json) => EmailInfo(
        emailAddress: json["emailAddress"],
    );

    Map<String, dynamic> toJson() => {
        "emailAddress": emailAddress,
    };
}


EmailInfo emailInfoFromJson(String str) => EmailInfo.fromJson(json.decode(str));

String emailInfoToJson(EmailInfo data) => json.encode(data.toJson());