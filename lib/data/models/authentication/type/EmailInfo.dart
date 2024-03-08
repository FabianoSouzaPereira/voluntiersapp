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

    factory EmailInfo.fromMap(Map<String, dynamic> json) => EmailInfo(
        emailAddress: json["emailAddress"],
    );

    Map<String, dynamic> toMap() => {
        "emailAddress": emailAddress,
    };
}


EmailInfo emailInfoFromMap(String str) => EmailInfo.fromMap(json.decode(str));

String emailInfoToMap(EmailInfo data) => json.encode(data.toMap());