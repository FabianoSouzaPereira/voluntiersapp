import 'dart:convert';
import 'package:volunteersapp/data/models/authentication_cloud_firestore/accounts/createAuthUri/CustomParameter.dart';

class CreateAuthUriRequest {
    final String? identifier;
    final String? continueUri;
    final String? openidRealm;
    final String? providerId;
    final String? oauthConsumerKey;
    final String? oauthScope;
    final String? context;
    final String? otaApp;
    final String? appId;
    final String? hostedDomain;
    final String? sessionId;
    final String? authFlowType;
    final CustomParameter? customParameter;
    final String? tenantId;

    CreateAuthUriRequest({
        this.identifier,
        this.continueUri,
        this.openidRealm,
        this.providerId,
        this.oauthConsumerKey,
        this.oauthScope,
        this.context,
        this.otaApp,
        this.appId,
        this.hostedDomain,
        this.sessionId,
        this.authFlowType,
        this.customParameter,
        this.tenantId,
    });

    CreateAuthUriRequest copyWith({
        String? identifier,
        String? continueUri,
        String? openidRealm,
        String? providerId,
        String? oauthConsumerKey,
        String? oauthScope,
        String? context,
        String? otaApp,
        String? appId,
        String? hostedDomain,
        String? sessionId,
        String? authFlowType,
        CustomParameter? customParameter,
        String? tenantId,
    }) => 
        CreateAuthUriRequest(
            identifier: identifier ?? this.identifier,
            continueUri: continueUri ?? this.continueUri,
            openidRealm: openidRealm ?? this.openidRealm,
            providerId: providerId ?? this.providerId,
            oauthConsumerKey: oauthConsumerKey ?? this.oauthConsumerKey,
            oauthScope: oauthScope ?? this.oauthScope,
            context: context ?? this.context,
            otaApp: otaApp ?? this.otaApp,
            appId: appId ?? this.appId,
            hostedDomain: hostedDomain ?? this.hostedDomain,
            sessionId: sessionId ?? this.sessionId,
            authFlowType: authFlowType ?? this.authFlowType,
            customParameter: customParameter ?? this.customParameter,
            tenantId: tenantId ?? this.tenantId,
        );

    factory CreateAuthUriRequest.fromJson(Map<String, dynamic> json) => CreateAuthUriRequest(
        identifier: json["identifier"],
        continueUri: json["continueUri"],
        openidRealm: json["openidRealm"],
        providerId: json["providerId"],
        oauthConsumerKey: json["oauthConsumerKey"],
        oauthScope: json["oauthScope"],
        context: json["context"],
        otaApp: json["otaApp"],
        appId: json["appId"],
        hostedDomain: json["hostedDomain"],
        sessionId: json["sessionId"],
        authFlowType: json["authFlowType"],
        customParameter: json["customParameter"] == null ? null : CustomParameter.fromJson(json["customParameter"]),
        tenantId: json["tenantId"],
    );

    Map<String, dynamic> toJson() => {
        "identifier": identifier,
        "continueUri": continueUri,
        "openidRealm": openidRealm,
        "providerId": providerId,
        "oauthConsumerKey": oauthConsumerKey,
        "oauthScope": oauthScope,
        "context": context,
        "otaApp": otaApp,
        "appId": appId,
        "hostedDomain": hostedDomain,
        "sessionId": sessionId,
        "authFlowType": authFlowType,
        "customParameter": customParameter?.toJson(),
        "tenantId": tenantId,
    };
}

CreateAuthUriRequest createAuthUriFromJson(String str) => CreateAuthUriRequest.fromJson(json.decode(str));

String createAuthUriToJson(CreateAuthUriRequest data) => json.encode(data.toJson());
