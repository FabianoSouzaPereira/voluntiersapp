import 'package:volunteersapp/data/models/authentication/auth_SignIn_With_Password_Model/response/signin_with_password_Model.dart';

class MfaInfo {
    final MfaEnrollment? mfaEnrollment;

    MfaInfo({
        this.mfaEnrollment,
    });

    MfaInfo copyWith({
        MfaEnrollment? mfaEnrollment,
    }) => 
        MfaInfo(
            mfaEnrollment: mfaEnrollment ?? this.mfaEnrollment,
        );

    factory MfaInfo.fromMap(Map<String, dynamic> json) => MfaInfo(
        mfaEnrollment: json["MfaEnrollment"] == null ? null : MfaEnrollment.fromMap(json["MfaEnrollment"]),
    );

    Map<String, dynamic> toMap() => {
        "MfaEnrollment": mfaEnrollment?.toMap(),
    };
}