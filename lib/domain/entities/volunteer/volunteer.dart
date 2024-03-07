/*
 Single: Not married or in any other legally recognized relationship.
 Married: Legally married.
 Divorced: Previously married but now legally divorced.
 Widowed: Lost a spouse through death and not remarried.
 Separated: Legally separated from spouse but not yet divorced.
 Engaged: Committed to marry but not yet married.
 Dating: In a romantic relationship but not legally recognized.
*/
import 'package:volunteersapp/domain/entities/volunteer/helthy.dart';
import 'package:volunteersapp/domain/entities/volunteer/marital_status.dart';
import 'package:volunteersapp/domain/entities/volunteer/permissions.dart';
import 'package:volunteersapp/domain/entities/volunteer/positions.dart';

class Volunteer {
  final String id;
  final String name;
  final String gender;
  final MaritalStatus maritalStatus;
  final int availableWeekends;
  final Positions positions;
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

  Volunteer copyWith({
    String? id,
    String? name,
    String? gender,
    MaritalStatus? maritalStatus,
    int? availableWeekends,
    Positions? positions,
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

  bool? isAllowedToAnnouncements(){
    return permissions.announcements;
  }

  bool hasPermission(Permission permission) {
    return permissions.getPermissionValue(permission);
  }

  PositionOption? getPosition(Position position){
    return positions.getOptions(position);
  }

}
