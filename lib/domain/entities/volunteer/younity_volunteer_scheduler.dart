import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:volunteersapp/domain/entities/volunteer/positions.dart';
import 'package:volunteersapp/domain/entities/volunteer/volunteerShift.dart';
import 'package:volunteersapp/domain/entities/volunteer/volunteer.dart';

class YounityVolunteerScheduler {
  List<Volunteer> volunteers;
  List<VolunteerShift> shifts;
  Map<Position, List<ReceptionOption>> positionRestrictions;

  YounityVolunteerScheduler(): volunteers = [],
    shifts = [],
    positionRestrictions = HashMap() {
    positionRestrictions[Position.reception] = [
      ReceptionOption.library, 
      ReceptionOption.canteen
    ];
    positionRestrictions[Position.parking] = [];
    positionRestrictions[Position.lobby] = [];
    positionRestrictions[Position.hospitality] = [];
    positionRestrictions[Position.announcements] = [];
  }

  void addVolunteer(Volunteer volunteer) {
    volunteers.add(volunteer);

    updateAnnouncementsRestrictions();
  }

  void removeVolunteer(String name) {
    volunteers.removeWhere((volunteer) => volunteer.name == name);
    
    updateAnnouncementsRestrictions();
  }


  /* Method to update Announcements restrictions based on volunteers' permissions */
  void updateAnnouncementsRestrictions() {
    bool hasPermission = volunteers.any((volunteer) => volunteer.permissions.announcements ?? false);
    positionRestrictions[Position.announcements] = hasPermission ? ReceptionOption.values : [];
  }

  List<Volunteer> listVolunteers() {
    return volunteers;
  }

  /* Method to add a volunteer to a specific shift */
  void addShift(String position, String volunteerName, String date) {
    if (checkRestrictions(position, volunteerName)) {
      shifts.add(VolunteerShift(position, volunteerName, date));
    } else {
      if (kDebugMode) {
        print("Could not add $volunteerName to position $position due to restrictions.");
      }
    }
  }

  /* Method to perform shift swaps between volunteers */
  void swapShifts(String volunteerName1, String date1, String volunteerName2, String date2) {
    /* Implementation of the swapping logic as described */
    /* Here the logic to find the shifts and perform the swap, respecting necessary approvals, would be developed */
  }

  /* Method to check position restrictions */
  bool checkRestrictions(String position, String volunteerName) {
    /* Implementation of specific position restrictions */
    /* For example, check if the volunteer is in the allowed list for "Announcements" */
    
    return true;
  }

  /* Method to list the shifts */
  List<VolunteerShift> listShifts() {
    return shifts;
  }
}