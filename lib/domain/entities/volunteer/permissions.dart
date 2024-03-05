class Permissions {
  final bool? translate;
  final bool? announce;
  final bool? library;
  final bool? cantina;
  final bool? announcements;
  final bool? addVolunteer;
  final bool? removeVolunteer;
  final bool? addshit;
  final bool? removeShift;
  final bool? listvolunteer;
  final bool? listAvailableVolunteers;
  final bool? listVolunteerdays;
  final bool? listSchedules;
  final bool? listHealthVolunteers;

  const Permissions({
    this.translate, 
    this.announce, 
    this.library, 
    this.cantina, 
    this.announcements, 
    this.addVolunteer, 
    this.removeVolunteer, 
    this.addshit, 
    this.removeShift, 
    this.listvolunteer, 
    this.listAvailableVolunteers, 
    this.listVolunteerdays, 
    this.listSchedules, 
    this.listHealthVolunteers,
  });
  
  Permissions copyWith({
  bool? translate,
  bool? announce,
  bool? library,
  bool? cantina,
  bool? announciment,
  bool? addVolunteer,
  bool? removeVolunteer,
  bool? addshit,
  bool? removeShift,
  bool? listvolunteer,
  bool? listAvailableVolunteers,
  bool? listVolunteerdays,
  bool? listSchedules,
  bool? listHealthVolunteers,
  }) {
    return Permissions(
      translate: translate ?? this.translate,
      library: library ?? this.library,
      cantina: cantina ?? this.cantina,
      announcements: announciment ?? this.announcements,
      addVolunteer: addVolunteer ?? this.addVolunteer,
      removeVolunteer: removeVolunteer ?? this.addVolunteer,
      addshit: addshit ?? this.addshit,
      removeShift: removeShift ?? this.removeShift,
      listvolunteer: listvolunteer ?? this.listVolunteerdays,
      listAvailableVolunteers: listAvailableVolunteers ?? this.listAvailableVolunteers,
      listVolunteerdays: listVolunteerdays ?? this.listVolunteerdays,
      listSchedules: listSchedules ?? this.listSchedules,
      listHealthVolunteers: listHealthVolunteers ?? this.listHealthVolunteers,
    );
  }

  bool getPermissionValue(Permission permission) {
    switch (permission) {
      case Permission.translate:
        return translate ?? false;
      case Permission.library:
        return library ?? false;
      case Permission.cantina:
        return cantina ?? false;
      case Permission.announcements:
        return announcements ?? false;
      case Permission.addVolunteer:  
        return addVolunteer ?? false;
      case Permission.removeVolunteer:
        return  removeVolunteer ?? false;
      case Permission.addshit: 
        return addshit ?? false;
      case Permission.removeShift: 
        return removeShift ?? false;
      case Permission.listvolunteer: 
        return listvolunteer ?? false;
      case Permission.listAvailableVolunteers: 
        return listAvailableVolunteers ?? false;
      case Permission.listAVolunteerdays: 
        return listVolunteerdays ?? false;
      case Permission.listSchedules: 
        return listSchedules ?? false;
      case Permission.listHealthVoluntiers: 
        return listHealthVolunteers ?? false;
      default:
        return false;
    }
  }
}

enum Permission {
  translate,
  library,
  cantina,
  announcements,
  addVolunteer,
  removeVolunteer,
  addshit,
  removeShift,
  listvolunteer,
  listAvailableVolunteers,
  listAVolunteerdays,
  listSchedules,
  listHealthVoluntiers,
}