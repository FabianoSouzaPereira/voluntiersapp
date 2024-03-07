import 'package:volunteersapp/domain/entities/volunteer/permissions.dart';
import 'package:volunteersapp/domain/entities/volunteer/roleType.dart';

class Role {
  final RoleType roleType;
  final Set<Permission> permission;
  
  const Role(this.roleType, this.permission);

  static Map<RoleType, Role> predefinedRoles = {
    RoleType.superAdmin: const Role(RoleType.superAdmin, { 
      Permission.translate,
      Permission.library,
      Permission.cantina,
      Permission.announcements,
      Permission.addVolunteer,
      Permission.removeVolunteer,
      Permission.addshit,
      Permission.removeShift,
    }),
    RoleType.admin: const Role(RoleType.admin, { 
      Permission.translate,
      Permission.library,
      Permission.cantina,
      Permission.announcements,
      Permission.addVolunteer,
      Permission.removeVolunteer,
      Permission.addshit,
      Permission.removeShift,
    }),
    RoleType.editor: const Role(RoleType.editor, {
      Permission.library,
      Permission.announcements,
    }),
    RoleType.viewer: const Role(RoleType.viewer, {
      Permission.library,
    }),
    RoleType.volunteerCoordinator: const Role(RoleType.volunteerCoordinator, {
      Permission.announcements,
    }),
    RoleType.eventManager: const Role(RoleType.eventManager, {
      Permission.announcements,
      Permission.cantina,
    }),
    RoleType.volunteer: const Role(RoleType.volunteer, {
      Permission.cantina,
      Permission.translate,
      Permission.library,
      Permission.announcements,
    }),
  };

  static Role getRole(RoleType type) => predefinedRoles[type]!;
}