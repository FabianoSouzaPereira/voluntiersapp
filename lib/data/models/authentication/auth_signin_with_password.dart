// ignore_for_file: constant_identifier_names

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class User extends Equatable {
  final String kind;
  final String localId;
  final String email;
  final String displayName;
  final String idToken;
  final bool registered;
  final String profilePicture;
  final String oauthAccessToken;
  final int oauthExpireIn;
  final String oauthAuthorizationCode;
  final String refreshToken;
  final String expiresIn;
  final String mfaPendingCredential;
  final List<MfaEnrollment> mfaInfo;
  final List<UserNotification> userNotifications;

  const User({
    required this.kind,
    required this.localId,
    required this.email,
    required this.displayName,
    required this.idToken,
    required this.registered,
    required this.profilePicture,
    required this.oauthAccessToken,
    required this.oauthExpireIn,
    required this.oauthAuthorizationCode,
    required this.refreshToken,
    required this.expiresIn,
    required this.mfaPendingCredential,
    required this.mfaInfo,
    required this.userNotifications,
  });

  @override
  List<Object> get props => [
        kind,
        localId,
        email,
        displayName,
        idToken,
        registered,
        profilePicture,
        oauthAccessToken,
        oauthExpireIn,
        oauthAuthorizationCode,
        refreshToken,
        expiresIn,
        mfaPendingCredential,
        mfaInfo,
        userNotifications,
      ];

  @override
  bool get stringify => true;

  User copyWith({
    String? kind,
    String? localId,
    String? email,
    String? displayName,
    String? idToken,
    bool? registered,
    String? profilePicture,
    String? oauthAccessToken,
    int? oauthExpireIn,
    String? oauthAuthorizationCode,
    String? refreshToken,
    String? expiresIn,
    String? mfaPendingCredential,
    List<MfaEnrollment>? mfaInfo,
    List<UserNotification>? userNotifications,
  }) {
    return User(
      kind: kind ?? this.kind,
      localId: localId ?? this.localId,
      email: email ?? this.email,
      displayName: displayName ?? this.displayName,
      idToken: idToken ?? this.idToken,
      registered: registered ?? this.registered,
      profilePicture: profilePicture ?? this.profilePicture,
      oauthAccessToken: oauthAccessToken ?? this.oauthAccessToken,
      oauthExpireIn: oauthExpireIn ?? this.oauthExpireIn,
      oauthAuthorizationCode: oauthAuthorizationCode ?? this.oauthAuthorizationCode,
      refreshToken: refreshToken ?? this.refreshToken,
      expiresIn: expiresIn ?? this.expiresIn,
      mfaPendingCredential: mfaPendingCredential ?? this.mfaPendingCredential,
      mfaInfo: mfaInfo ?? this.mfaInfo,
      userNotifications: userNotifications ?? this.userNotifications,
    );
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is User &&
        o.kind == kind &&
        o.localId == localId &&
        o.email == email &&
        o.displayName == displayName &&
        o.idToken == idToken &&
        o.registered == registered &&
        o.profilePicture == profilePicture &&
        o.oauthAccessToken == oauthAccessToken &&
        o.oauthExpireIn == oauthExpireIn &&
        o.oauthAuthorizationCode == oauthAuthorizationCode &&
        o.refreshToken == refreshToken &&
        o.expiresIn == expiresIn &&
        o.mfaPendingCredential == mfaPendingCredential &&
        listEquals(o.mfaInfo, mfaInfo) &&
        listEquals(o.userNotifications, userNotifications);
  }

  @override
  int get hashCode {
    return kind.hashCode ^
        localId.hashCode ^
        email.hashCode ^
        displayName.hashCode ^
        idToken.hashCode ^
        registered.hashCode ^
        profilePicture.hashCode ^
        oauthAccessToken.hashCode ^
        oauthExpireIn.hashCode ^
        oauthAuthorizationCode.hashCode ^
        refreshToken.hashCode ^
        expiresIn.hashCode ^
        mfaPendingCredential.hashCode ^
        mfaInfo.hashCode ^
        userNotifications.hashCode;
  }

  @override
  String toString() {
    return 'User{kind: $kind, localId: $localId, email: $email, displayName: $displayName, idToken: $idToken, registered: $registered, profilePicture: $profilePicture, oauthAccessToken: $oauthAccessToken, oauthExpireIn: $oauthExpireIn, oauthAuthorizationCode: $oauthAuthorizationCode, refreshToken: $refreshToken, expiresIn: $expiresIn, mfaPendingCredential: $mfaPendingCredential, mfaInfo: $mfaInfo, userNotifications: $userNotifications}';
  }
}

class MfaEnrollment extends Equatable {
  final String mfaEnrollmentId;
  final String displayName;
  final String enrolledAt;
  final String phoneInfo;
  final TotpInfo totpInfo;
  final EmailInfo emailInfo;
  final String unobfuscatedPhoneInfo;

  const MfaEnrollment({
    required this.mfaEnrollmentId,
    required this.displayName,
    required this.enrolledAt,
    required this.phoneInfo,
    required this.totpInfo,
    required this.emailInfo,
    required this.unobfuscatedPhoneInfo,
  });

  @override
  List<Object> get props => [
        mfaEnrollmentId,
        displayName,
        enrolledAt,
        phoneInfo,
        totpInfo,
        emailInfo,
        unobfuscatedPhoneInfo,
      ];
}

class EmailInfo extends Equatable {
  final String emailAddress;

  const EmailInfo({
    required this.emailAddress,
  });

  @override
  List<Object> get props => [emailAddress];
}

class TotpInfo {}

class UserNotification extends Equatable {
  final NotificationCode notificationCode;
  final String notificationMessage;

  const UserNotification({
    required this.notificationCode,
    required this.notificationMessage,
  });

  @override
  List<Object> get props => [notificationCode, notificationMessage];
}

enum NotificationCode { 
  NOTIFICATION_CODE_UNSPECIFIED,
  MISSING_LOWERCASE_CHARACTER,
  MISSING_UPPERCASE_CHARACTER,
  MISSING_NUMERIC_CHARACTER,
  MISSING_NON_ALPHANUMERIC_CHARACTER,
  MINIMUM_PASSWORD_LENGTH,
  MAXIMUM_PASSWORD_LENGTH,
} 


void main() {
  // Teste
  final user = User(
    kind: "",
    localId: "",
    email: "",
    displayName: "",
    idToken: "",
    registered: true,
    profilePicture: "",
    oauthAccessToken: "",
    oauthExpireIn: 0,
    oauthAuthorizationCode: "",
    refreshToken: "",
    expiresIn: "",
    mfaPendingCredential: "",
    mfaInfo: [
      MfaEnrollment(
        mfaEnrollmentId: "",
        displayName: "",
        enrolledAt: "",
        phoneInfo: "",
        totpInfo: TotpInfo(),
        emailInfo: const EmailInfo(emailAddress: ""),
        unobfuscatedPhoneInfo: "",
      ),
    ],
    userNotifications: const [
      UserNotification(
        notificationCode: NotificationCode.NOTIFICATION_CODE_UNSPECIFIED,
        notificationMessage: "",
      ),
    ],
  );

  if (kDebugMode) {
    print(user.toString());
  }
}
