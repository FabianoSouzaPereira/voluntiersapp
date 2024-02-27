/*
 Single: Not married or in any other legally recognized relationship.
 Married: Legally married.
 Divorced: Previously married but now legally divorced.
 Widowed: Lost a spouse through death and not remarried.
 Separated: Legally separated from spouse but not yet divorced.
 Engaged: Committed to marry but not yet married.
 Dating: In a romantic relationship but not legally recognized.
*/
class Volunteer {
  final String id;
  final String name;
  final String gender;
  final MaritalStatus maritalStatus;
  final int availableWeekends;
  final List<String> positions;
  final bool translator;
  final Permissions permissions;
  final bool available;
  final Health health;

  const Volunteer({
    required this.id,
    required this.name,
    required this.gender,
    required this.maritalStatus,
    required this.availableWeekends,
    required this.positions,
    this.translator = false,
    this.permissions = const Permissions(),
    this.available = true,
    this.health = Health.healthy,
  });

  // Adicionando o método copyWith
  Volunteer copyWith({
    String? id,
    String? name,
    String? gender,
    MaritalStatus? maritalStatus,
    int? availableWeekends,
    List<String>? positions,
    bool? translator,
    Permissions? permissions,
    bool? available,
    Health? health,
  }) {
    return Volunteer(
      id: id ?? this.id,
      name: name ?? this.name,
      gender: gender ?? this.gender,
      maritalStatus: maritalStatus ?? this.maritalStatus,
      availableWeekends: availableWeekends ?? this.availableWeekends,
      positions: positions ?? this.positions,
      translator: translator ?? this.translator,
      permissions: permissions ?? this.permissions,
      available: available ?? this.available,
      health: health ?? this.health,
    );
  }

  bool isMarried() {
    return maritalStatus == MaritalStatus.married;
  }

  bool isMaritalNameVolunteer(List<Volunteer> allVolunteers) {
    return allVolunteers.any((volunteer) => volunteer.name == name);
  }
}

class Permissions {
  final bool translate;
  final bool announce;
  final bool library;
  final bool cantina;

  const Permissions({
    this.translate = false,
    this.announce = false,
    this.library = false,
    this.cantina = false,
  });

  
  Permissions copyWith({
    bool? translate,
    bool? announce,
    bool? library,
    bool? cantina,
  }) {
    return Permissions(
      translate: translate ?? this.translate,
      announce: announce ?? this.announce,
      library: library ?? this.library,
      cantina: cantina ?? this.cantina,
    );
  }
}

enum MaritalStatus {
  single,
  married,
  divorced,
  widowed,
  separated,
  engaged,
  dating,
}

enum Health {
  healthy,
  sick,
  uninformed,
}


/*   
// Atualizando a permissão de translate para true
  Permissions updatedPermissions = volunteer.permissions.copyWith(translate: true);

  // Agora, atualizando a instância de Volunteer com as novas permissões
  Volunteer updatedVolunteer = volunteer.copyWith(permissions: updatedPermissions);
*/