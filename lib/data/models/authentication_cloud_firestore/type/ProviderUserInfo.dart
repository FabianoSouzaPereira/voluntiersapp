import 'dart:convert';

class ProviderUserInfo {
    final String providerId;
    final String displayName;
    final String photoUrl;
    final String federatedId;
    final String email;
    final String rawId;
    final String screenName;
    final String phoneNumber;

    ProviderUserInfo({
      this.providerId = "",
      this.displayName = "",
      this.photoUrl = "",
      this.federatedId = "",
      this.email = "",
      this.rawId = "",
      this.screenName = "",
      this.phoneNumber = "",
    });

    ProviderUserInfo copyWith({
        String? providerId,
        String? displayName,
        String? photoUrl,
        String? federatedId,
        String? email,
        String? rawId,
        String? screenName,
        String? phoneNumber,
    }) => 
        ProviderUserInfo(
            providerId: providerId ?? this.providerId,
            displayName: displayName ?? this.displayName,
            photoUrl: photoUrl ?? this.photoUrl,
            federatedId: federatedId ?? this.federatedId,
            email: email ?? this.email,
            rawId: rawId ?? this.rawId,
            screenName: screenName ?? this.screenName,
            phoneNumber: phoneNumber ?? this.phoneNumber,
        );

    factory ProviderUserInfo.fromJson(Map<String, dynamic> json) => ProviderUserInfo(
        providerId: json["providerId"] ?? "",
        displayName: json["displayName"] ?? "",
        photoUrl: json["photoUrl"] ?? "",
        federatedId: json["federatedId"] ?? "",
        email: json["email"] ?? "",
        rawId: json["rawId"] ?? "",
        screenName: json["screenName"] ?? "",
        phoneNumber: json["phoneNumber"] ?? "",
    );

    Map<String, dynamic> toJson() => {
        "providerId": providerId,
        "displayName": displayName,
        "photoUrl": photoUrl,
        "federatedId": federatedId,
        "email": email,
        "rawId": rawId,
        "screenName": screenName,
        "phoneNumber": phoneNumber,
    };
}

ProviderUserInfo providerUserInfoFromMap(String str) => ProviderUserInfo.fromJson(json.decode(str));

String providerUserInfoToMap(ProviderUserInfo data) => json.encode(data.toJson());

