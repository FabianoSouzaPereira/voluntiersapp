import 'dart:convert';

SignInWithIdpRequest signInWithIdpRequestFromJson(String str) => SignInWithIdpRequest.fromJson(json.decode(str));

String signInWithIdpRequestToJson(SignInWithIdpRequest data) => json.encode(data.toJson());

class SignInWithIdpRequest {
    final String? postBody;
    final String? requestUri;
    final bool? returnIdpCredential;
    final bool? returnSecureToken;

    SignInWithIdpRequest({
        this.postBody,
        this.requestUri,
        this.returnIdpCredential,
        this.returnSecureToken,
    });

    SignInWithIdpRequest copyWith({
        String? postBody,
        String? requestUri,
        bool? returnIdpCredential,
        bool? returnSecureToken,
    }) => 
        SignInWithIdpRequest(
            postBody: postBody ?? this.postBody,
            requestUri: requestUri ?? this.requestUri,
            returnIdpCredential: returnIdpCredential ?? this.returnIdpCredential,
            returnSecureToken: returnSecureToken ?? this.returnSecureToken,
        );

    factory SignInWithIdpRequest.fromJson(Map<String, dynamic> json) => SignInWithIdpRequest(
        postBody: json["postBody"],
        requestUri: json["requestUri"],
        returnIdpCredential: json["returnIdpCredential"],
        returnSecureToken: json["returnSecureToken"],
    );

    Map<String, dynamic> toJson() => {
        "postBody": postBody,
        "requestUri": requestUri,
        "returnIdpCredential": returnIdpCredential,
        "returnSecureToken": returnSecureToken,
    };
}



PostBody postBodyFromJson(String str) => PostBody.fromJson(json.decode(str));

String postBodyToJson(PostBody data) => json.encode(data.toJson());

class PostBody {
    final String? accessToken;
    final String? oauthTokenSecret;
    final String? providerId;

    PostBody({
        this.accessToken,
        this.oauthTokenSecret,
        this.providerId,
    });

    PostBody copyWith({
        String? accessToken,
        String? oauthTokenSecret,
        String? providerId,
    }) => 
        PostBody(
            accessToken: accessToken ?? this.accessToken,
            oauthTokenSecret: oauthTokenSecret ?? this.oauthTokenSecret,
            providerId: providerId ?? this.providerId,
        );

    factory PostBody.fromJson(Map<String, dynamic> json) => PostBody(
        accessToken: json["access_token"],
        oauthTokenSecret: json["oauth_token_secret"],
        providerId: json["providerId"],
    );

    Map<String, dynamic> toJson() => {
        "access_token": accessToken,
        "oauth_token_secret": oauthTokenSecret,
        "providerId": providerId,
    };
}

  @override
  String toString(String? accessToken, String? oauthTokenSecret, String? providerId) {
    var accessToken;
    var oauthTokenSecret;
    var providerId;
    return '{"postBody":"access_token=$accessToken&oauth_token_secret=$oauthTokenSecret&providerId=$providerId"}';
  }