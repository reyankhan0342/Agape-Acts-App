import 'package:flutter/material.dart';

class Provider_Class extends ChangeNotifier {
  ///Top giver cscreen work in provider //////
  bool days = true;
  bool week = false;
  bool month = false;
  bool all = false;
  void daysMethod() {
    days = true;
    week = false;
    month = false;
    all = false;
    notifyListeners();
  }

  void weekMethod() {
    days = false;
    week = true;
    month = false;
    all = false;
    notifyListeners();
  }

  void monthMethod() {
    days = false;
    week = false;
    month = true;
    all = false;
    notifyListeners();
  }

  void allMethod() {
    days = false;
    week = false;
    month = false;
    all = true;
    notifyListeners();
  }

  int value = 0;

  /// changing  screen of days week month and all ///////
  getVlaue(int x) {
    value = x;
    notifyListeners();
  }

  /// Top Giver Screen Work in  from Ther in provider ///////////////

  /// Home Screen Work from      //////////

  bool seletedFriendsColor = true;
  bool seletedAllMembarColor = false;

  void changeFriendsColor() {
    seletedFriendsColor = true;
    seletedAllMembarColor = false;
    notifyListeners();
  }

  void changeAllMembarColor() {
    seletedAllMembarColor = true;
    seletedFriendsColor = false;
    notifyListeners();
  }

  ///    HomeScreen Work End in provider  //////

  /// MainPageNavigationDrawer Screen showin  work ////////

  bool seletedPageColor1 = false;
  bool seletedPageColor2 = false;
  bool seletedPageColor3 = false;
  bool seletedPageColor4 = false;
  bool seletedPageColor5 = false;
  bool seletedPageColor6 = false;
  bool seletedPageColor7 = false;
  bool seletedPageColor8 = false;

  void homePageSelectedColor() {
    seletedPageColor1 = true;
    seletedPageColor8 = false;
    seletedPageColor2 = false;
    seletedPageColor3 = false;
    seletedPageColor4 = false;
    seletedPageColor5 = false;
    seletedPageColor6 = false;
    seletedPageColor7 = false;
    notifyListeners();
  }

  void profilePageSelectedColor() {
    seletedPageColor7 = false;
    seletedPageColor8 = true;
    seletedPageColor1 = false;
    seletedPageColor2 = false;
    seletedPageColor3 = false;
    seletedPageColor4 = false;
    seletedPageColor5 = false;
    seletedPageColor6 = false;
    notifyListeners();
  }

  void nominatePageSelectedColor() {
    seletedPageColor2 = true;
    seletedPageColor3 = false;
    seletedPageColor4 = false;
    seletedPageColor1 = false;
    seletedPageColor5 = false;
    seletedPageColor6 = false;
    seletedPageColor7 = false;
    seletedPageColor8 = false;
    notifyListeners();
  }

  void friendsPageSelectedColor() {
    seletedPageColor3 = true;
    seletedPageColor2 = false;
    seletedPageColor4 = false;
    seletedPageColor1 = false;
    seletedPageColor5 = false;
    seletedPageColor6 = false;
    seletedPageColor8 = false;
    seletedPageColor7 = false;
    notifyListeners();
  }

  void bradgesPageSelectedColor() {
    seletedPageColor4 = true;
    seletedPageColor2 = false;
    seletedPageColor3 = false;
    seletedPageColor1 = false;
    seletedPageColor5 = false;
    seletedPageColor6 = false;
    seletedPageColor8 = false;
    seletedPageColor7 = false;
    notifyListeners();
  }

  void massagePageSelectedColor() {
    seletedPageColor5 = true;
    seletedPageColor2 = false;
    seletedPageColor3 = false;
    seletedPageColor4 = false;
    seletedPageColor1 = false;
    seletedPageColor6 = false;
    seletedPageColor8 = false;
    seletedPageColor7 = false;
    notifyListeners();
  }

  void notificationPageSelectedColor() {
    seletedPageColor6 = true;
    seletedPageColor2 = false;
    seletedPageColor3 = false;
    seletedPageColor4 = false;
    seletedPageColor1 = false;
    seletedPageColor8 = false;
    seletedPageColor5 = false;
    seletedPageColor7 = false;
    notifyListeners();
  }

  void opportunitiesPageSelectedColor() {
    seletedPageColor7 = true;
    seletedPageColor2 = false;
    seletedPageColor3 = false;
    seletedPageColor1 = false;
    seletedPageColor8 = false;
    seletedPageColor4 = false;
    seletedPageColor5 = false;
    seletedPageColor6 = false;
    notifyListeners();
  }

  ///     oportunities screen  work seleted form list
  ///
  List leagusCategres = [
    'All',
    'Business',
    'Flutter Developer',
  ];
  List seletedCatagres = [
    'All',
    'Business',
    'Flutter Developer',
    'All',
    'Business',
    'Flutter Developer',
    'All',
    'Business',
    'Flutter Developer',
    'All',
    'Business',
    'Flutter Developer',
  ];

  String? countryValue;
  String? categtesValue;
  String? durationvalue;
  String? experinceValue;
  bool duration = true;
  bool experince = false;

  void setLegusCategory(String value) {
    countryValue = value;
    notifyListeners();
  }

  void setseletedCategory(String value) {
    categtesValue = value;
    notifyListeners();
  }

  void setdurationCategory(String value) {
    durationvalue = value;
    notifyListeners();
  }

  void setexperienceCategory(String value) {
    experinceValue = value;
    notifyListeners();
  }

  leguageDuration() {
    duration = true;
    experince = false;
    notifyListeners();
  }

  leguagExperince() {
    duration = false;
    experince = true;
    notifyListeners();
  }
}
