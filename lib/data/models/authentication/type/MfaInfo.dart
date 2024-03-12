import 'package:volunteersapp/data/models/authentication/type/MfaEnrollment.dart';

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

    factory MfaInfo.fromJson(Map<String, dynamic> json) => MfaInfo(
        mfaEnrollment: json["MfaEnrollment"] == null ? null : MfaEnrollment.fromJson(json["MfaEnrollment"]),
    );

    Map<String, dynamic> toJson() => {
        "MfaEnrollment": mfaEnrollment?.toJson(),
    };
}