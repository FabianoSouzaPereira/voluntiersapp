import 'dart:collection';

import 'package:voluntiersapp/domain/entities/voluntier/volunteerShift.dart';
import 'package:voluntiersapp/domain/entities/voluntier/volunteer.dart';

class YounityVolunteerScheduler {
  List<Volunteer> volunteers;
  List<VolunteerShift> shifts;
  HashMap<String, List<String>> positionRestrictions;

  YounityVolunteerScheduler()
      : volunteers = [],
        shifts = [],
        positionRestrictions = HashMap() {
    positionRestrictions['Recepção'] = ['Livro', 'Cantina'];
    positionRestrictions['Estacionamento'] = [];
    positionRestrictions['Hall de entrada'] = [];
    positionRestrictions['Hospitalidade'] = [];
    
    /* Add Announcements based on volunteers with allowedToAnnounciment permission */
    positionRestrictions['Anúncios'] = volunteers
        .where((volunteer) => volunteer.allowedToAnnounciment)
        .map((volunteer) => volunteer.name)
        .toList();
  }

  /* Method to add a volunteer */
    void addVolunteer(Volunteer volunteer) {
    volunteers.add(volunteer);

    updateAnnouncementsRestrictions();
  }


  /* Method to remove a volunteer */
  void removeVolunteer(String name) {
    volunteers.removeWhere((volunteer) => volunteer.name == name);
    
    updateAnnouncementsRestrictions();
  }


  /* Method to update Announcements restrictions based on volunteers' permissions */
  void updateAnnouncementsRestrictions() {
    positionRestrictions['Anúncios'] = volunteers
        .where((volunteer) => volunteer.allowedToAnnounciment)
        .map((volunteer) => volunteer.name)
        .toList();
  }

  /* Method to list all volunteers */
  List<Volunteer> listVolunteers() {
    return volunteers;
  }

  /* Method to add a volunteer to a specific shift */
  void addShift(String position, String volunteerName, String date) {
    /* Check restrictions before adding */
    if (checkRestrictions(position, volunteerName)) {
      shifts.add(VolunteerShift(position, volunteerName, date));
    } else {
      print("Could not add $volunteerName to position $position due to restrictions.");
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