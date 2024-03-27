import 'dart:convert';

class SendOobCode {
    final String? requestType;
    final String? email;
    final String? challenge;
    final String? captchaResp;
    final String? userIp;
    final String? newEmail;
    final String? idToken;
    final String? continueUrl;
    final String? iOsBundleId;
    final String? iOsAppStoreId;
    final String? androidPackageName;
    final bool? androidInstallApp;
    final String? androidMinimumVersion;
    final String? canHandleCodeInApp;
    final String? tenantId;
    final String? targetProjectId;
    final String? dynamicLinkDomain;
    final bool? returnOobLink;
    final String? clientType;
    final String? recaptchaVersion;

    SendOobCode({
        this.requestType,
        this.email,
        this.challenge,
        this.captchaResp,
        this.userIp,
        this.newEmail,
        this.idToken,
        this.continueUrl,
        this.iOsBundleId,
        this.iOsAppStoreId,
        this.androidPackageName,
        this.androidInstallApp,
        this.androidMinimumVersion,
        this.canHandleCodeInApp,
        this.tenantId,
        this.targetProjectId,
        this.dynamicLinkDomain,
        this.returnOobLink,
        this.clientType,
        this.recaptchaVersion,
    });

    SendOobCode copyWith({
        String? requestType,
        String? email,
        String? challenge,
        String? captchaResp,
        String? userIp,
        String? newEmail,
        String? idToken,
        String? continueUrl,
        String? iOsBundleId,
        String? iOsAppStoreId,
        String? androidPackageName,
        bool? androidInstallApp,
        String? androidMinimumVersion,
        String? canHandleCodeInApp,
        String? tenantId,
        String? targetProjectId,
        String? dynamicLinkDomain,
        bool? returnOobLink,
        String? clientType,
        String? recaptchaVersion,
    }) => 
        SendOobCode(
            requestType: requestType ?? this.requestType,
            email: email ?? this.email,
            challenge: challenge ?? this.challenge,
            captchaResp: captchaResp ?? this.captchaResp,
            userIp: userIp ?? this.userIp,
            newEmail: newEmail ?? this.newEmail,
            idToken: idToken ?? this.idToken,
            continueUrl: continueUrl ?? this.continueUrl,
            iOsBundleId: iOsBundleId ?? this.iOsBundleId,
            iOsAppStoreId: iOsAppStoreId ?? this.iOsAppStoreId,
            androidPackageName: androidPackageName ?? this.androidPackageName,
            androidInstallApp: androidInstallApp ?? this.androidInstallApp,
            androidMinimumVersion: androidMinimumVersion ?? this.androidMinimumVersion,
            canHandleCodeInApp: canHandleCodeInApp ?? this.canHandleCodeInApp,
            tenantId: tenantId ?? this.tenantId,
            targetProjectId: targetProjectId ?? this.targetProjectId,
            dynamicLinkDomain: dynamicLinkDomain ?? this.dynamicLinkDomain,
            returnOobLink: returnOobLink ?? this.returnOobLink,
            clientType: clientType ?? this.clientType,
            recaptchaVersion: recaptchaVersion ?? this.recaptchaVersion,
        );

    factory SendOobCode.fromJson(Map<String, dynamic> json) => SendOobCode(
        requestType: json["requestType"],
        email: json["email"],
        challenge: json["challenge"],
        captchaResp: json["captchaResp"],
        userIp: json["userIp"],
        newEmail: json["newEmail"],
        idToken: json["idToken"],
        continueUrl: json["continueUrl"],
        iOsBundleId: json["iOSBundleId"],
        iOsAppStoreId: json["iOSAppStoreId"],
        androidPackageName: json["androidPackageName"],
        androidInstallApp: json["androidInstallApp"],
        androidMinimumVersion: json["androidMinimumVersion"],
        canHandleCodeInApp: json["canHandleCodeInApp"],
        tenantId: json["tenantId"],
        targetProjectId: json["targetProjectId"],
        dynamicLinkDomain: json["dynamicLinkDomain"],
        returnOobLink: json["returnOobLink"],
        clientType: json["clientType"],
        recaptchaVersion: json["recaptchaVersion"],
    );

    Map<String, dynamic> toJson() => {
        "requestType": requestType,
        "email": email,
        "challenge": challenge,
        "captchaResp": captchaResp,
        "userIp": userIp,
        "newEmail": newEmail,
        "idToken": idToken,
        "continueUrl": continueUrl,
        "iOSBundleId": iOsBundleId,
        "iOSAppStoreId": iOsAppStoreId,
        "androidPackageName": androidPackageName,
        "androidInstallApp": androidInstallApp,
        "androidMinimumVersion": androidMinimumVersion,
        "canHandleCodeInApp": canHandleCodeInApp,
        "tenantId": tenantId,
        "targetProjectId": targetProjectId,
        "dynamicLinkDomain": dynamicLinkDomain,
        "returnOobLink": returnOobLink,
        "clientType": clientType,
        "recaptchaVersion": recaptchaVersion,
    };
}

SendOobCode sendOobCodeFromJson(String str) => SendOobCode.fromJson(json.decode(str));

String sendOobCodeToJson(SendOobCode data) => json.encode(data.toJson());
