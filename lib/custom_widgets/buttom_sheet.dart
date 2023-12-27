// ignore_for_file: sized_box_for_whitespace

import 'package:agape_acts_app/provider/provider_class.dart';
import 'package:agape_acts_app/screens/home_screens/badges_screen.dart';
import 'package:agape_acts_app/screens/home_screens/friends_screen.dart';
import 'package:agape_acts_app/screens/home_screens/home_screen.dart';
import 'package:agape_acts_app/screens/home_screens/massages_screen.dart';
import 'package:agape_acts_app/screens/home_screens/nominate_screen.dart';
import 'package:agape_acts_app/screens/home_screens/notifications_screen.dart';
import 'package:agape_acts_app/screens/home_screens/opportunities_screen.dart';
import 'package:agape_acts_app/screens/home_screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class ButtomSheet {
  void showPersistentBottomSheet(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return FractionallySizedBox(
          heightFactor: 0.9,
          child: ChangeNotifierProvider(
            create: (context) => Provider_Class(),
            child: Consumer<Provider_Class>(
              builder: (context, provide, child) => Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                          provide.homePageSelectedColor();
                        },
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: ListTile(
                            leading: Container(
                              width: 30,
                              height: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50)),
                              child: Image.asset(
                                'assets/icons/img_8.png',
                                width: 10,
                                height: 10,
                                color: Color(0xffC60000),
                              ),
                            ),
                            title: Text(
                              'Home',
                              style: TextStyle(
                                fontFamily: 'roboto1',
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: 13.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.grey.withOpacity(0.5),
                        indent: 10,
                        endIndent: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfileScreen()));
                          provide.profilePageSelectedColor();
                        },
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: ListTile(
                            leading: Container(
                              width: 30,
                              height: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50)),
                              child: Image.asset(
                                'assets/icons/img_9.png',
                                width: 10,
                                height: 10,
                                color: Color(0xffC60000),
                              ),
                            ),
                            title: Text(
                              'Profile',
                              style: TextStyle(
                                fontFamily: 'roboto1',
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: 13.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.grey.withOpacity(0.5),
                        indent: 10,
                        endIndent: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NominateScreen()));
                          provide.nominatePageSelectedColor();
                        },
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: ListTile(
                            leading: Container(
                              width: 30,
                              height: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50)),
                              child: Image.asset(
                                'assets/icons/img_10.png',
                                width: 10,
                                height: 10,
                                color: Color(0xffC60000),
                              ),
                            ),
                            title: Text(
                              'Nominate',
                              style: TextStyle(
                                fontFamily: 'roboto1',
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: 13.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.grey.withOpacity(0.5),
                        indent: 10,
                        endIndent: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FriendsScreen()));
                          provide.friendsPageSelectedColor();
                        },
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: ListTile(
                            leading: Container(
                              width: 30,
                              height: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50)),
                              child: Image.asset(
                                'assets/icons/img_11.png',
                                width: 10,
                                height: 10,
                                color: Color(0xffC60000),
                              ),
                            ),
                            title: Text(
                              'Friends',
                              style: TextStyle(
                                fontFamily: 'roboto1',
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: 13.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.grey.withOpacity(0.5),
                        indent: 10,
                        endIndent: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BadgesScreen()));
                          provide.bradgesPageSelectedColor();
                        },
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: ListTile(
                            leading: Container(
                              width: 30,
                              height: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50)),
                              child: Image.asset(
                                'assets/icons/img_12.png',
                                width: 10,
                                height: 10,
                                color: Color(0xffC60000),
                              ),
                            ),
                            title: Text(
                              'Badges',
                              style: TextStyle(
                                fontFamily: 'roboto1',
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: 13.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.grey.withOpacity(0.5),
                        indent: 10,
                        endIndent: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MassagesScreen()));
                          provide.massagePageSelectedColor();
                        },
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: ListTile(
                            leading: Container(
                              width: 30,
                              height: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color(0xffF8E0E0)),
                              child: Image.asset(
                                'assets/icons/img_13.png',
                                width: 10,
                                height: 10,
                                color: Color(0xffC60000),
                              ),
                            ),
                            title: Text(
                              'Messages',
                              style: TextStyle(
                                fontFamily: 'roboto1',
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: 13.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.grey.withOpacity(0.5),
                        indent: 10,
                        endIndent: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NotificationsScreen()));
                          provide.notificationPageSelectedColor();
                        },
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: ListTile(
                            leading: Container(
                              width: 30,
                              height: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color(0xffF8E0E0)),
                              child: Image.asset(
                                'assets/icons/img_14.png',
                                width: 10,
                                height: 10,
                                color: Color(0xffC60000),
                              ),
                            ),
                            title: Text(
                              'Notifications',
                              style: TextStyle(
                                fontFamily: 'roboto1',
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: 13.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.grey.withOpacity(0.5),
                        indent: 10,
                        endIndent: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OpportunitiesScreen()));
                          provide.opportunitiesPageSelectedColor();
                        },
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: ListTile(
                            leading: Container(
                              width: 30,
                              height: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color(0xffF8E0E0)),
                              child: Image.asset(
                                'assets/icons/img_15.png',
                                width: 10,
                                height: 10,
                                color: Color(0xffC60000),
                              ),
                            ),
                            title: Text(
                              'Opportunities',
                              style: TextStyle(
                                fontFamily: 'roboto1',
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: 13.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
