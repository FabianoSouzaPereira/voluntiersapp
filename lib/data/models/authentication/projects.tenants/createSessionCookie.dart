import 'dart:convert';

class ProjectsTenantsCreateSessionCookie {
    final String? idToken;
    final String? validDuration;

    ProjectsTenantsCreateSessionCookie({
        this.idToken,
        this.validDuration,
    });

    ProjectsTenantsCreateSessionCookie copyWith({
        String? idToken,
        String? validDuration,
    }) => 
        ProjectsTenantsCreateSessionCookie(
            idToken: idToken ?? this.idToken,
            validDuration: validDuration ?? this.validDuration,
        );

    factory ProjectsTenantsCreateSessionCookie.fromMap(Map<String, dynamic> json) => ProjectsTenantsCreateSessionCookie(
        idToken: json["idToken"],
        validDuration: json["validDuration"],
    );

    Map<String, dynamic> toMap() => {
        "idToken": idToken,
        "validDuration": validDuration,
    };
}

ProjectsTenantsCreateSessionCookie projectsTenantsCreateSessionCookieFromMap(String str) => ProjectsTenantsCreateSessionCookie.fromMap(json.decode(str));

String projectsTenantsCreateSessionCookieToMap(ProjectsTenantsCreateSessionCookie data) => json.encode(data.toMap());
