// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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

class SideMenuList extends StatefulWidget {
  @override
  State<SideMenuList> createState() => _SideMenuListState();
}

class _SideMenuListState extends State<SideMenuList> {
  //final Function(int) onMenuItemTap;
  int value = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ChangeNotifierProvider(
      create: (context) => Provider_Class(),
      child: Consumer<Provider_Class>(builder: (context, provide, child) {
        return Column(
          children: [
            Container(
              margin: EdgeInsets.only(right: 70),
              width: 180.w,
              decoration: BoxDecoration(
                  color: Color(0xff31333E).withOpacity(0.4),
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Color(0xffFFFFFF), width: 1)),
              child: Row(
                children: [
                  SizedBox(
                    width: 10.w,
                  ),
                  Image.asset(
                    'assets/icons/img_6.png',
                    width: size.width * 0.1,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.width * 0.03, left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dark_Emeralds',
                          style: TextStyle(
                            fontFamily: 'public',
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 12.sp,
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 3, right: 4),
                              child: Image.asset(
                                'assets/icons/img_7.png',
                                width: size.width * 0.02,
                              ),
                            ),
                            Text(
                              'Google',
                              style: TextStyle(
                                  fontSize: size.width * 0.03,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'roboto1',
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 11.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () => HomeScreen(),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 61.h),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
                provide.homePageSelectedColor();
              },
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 8),
                  width: 185.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: provide.seletedPageColor1 == true
                          ? Color(0xffC60000)
                          : Colors.transparent),
                  child: ListTile(
                    leading: Image.asset(
                      'assets/icons/img_8.png',
                      width: size.width * 0.05,
                    ),
                    title: Text(
                      'Home',
                      style: TextStyle(
                        fontFamily: 'roboto1',
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 13.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()));
                provide.profilePageSelectedColor();
              },
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 8),
                  width: 185.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: provide.seletedPageColor8 == true
                          ? Color(0xffC60000)
                          : Colors.transparent),
                  child: ListTile(
                    leading: Image.asset(
                      'assets/icons/img_9.png',
                      width: size.width * 0.05,
                    ),
                    title: Text(
                      'Profile',
                      style: TextStyle(
                        fontFamily: 'roboto1',
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 13.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NominateScreen()));
                provide.nominatePageSelectedColor();
              },
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 8),
                  width: 185.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: provide.seletedPageColor2 == true
                          ? Color(0xffC60000)
                          : Colors.transparent),
                  child: ListTile(
                    leading: Image.asset(
                      'assets/icons/img_10.png',
                      width: size.width * 0.05,
                    ),
                    title: Text(
                      'Nominate',
                      style: TextStyle(
                        fontFamily: 'roboto1',
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 13.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FriendsScreen()));
                provide.friendsPageSelectedColor();
              },
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 8),
                  width: 185.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: provide.seletedPageColor3 == true
                          ? Color(0xffC60000)
                          : Colors.transparent),
                  child: ListTile(
                    leading: Image.asset(
                      'assets/icons/img_11.png',
                      width: size.width * 0.05,
                    ),
                    title: Text(
                      'Friends',
                      style: TextStyle(
                        fontFamily: 'roboto1',
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 13.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BadgesScreen()));
                provide.bradgesPageSelectedColor();
              },
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 8),
                  width: 185.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: provide.seletedPageColor4 == true
                          ? Color(0xffC60000)
                          : Colors.transparent),
                  child: ListTile(
                    leading: Image.asset(
                      'assets/icons/img_12.png',
                      width: size.width * 0.05,
                    ),
                    title: Text(
                      'Badges',
                      style: TextStyle(
                        fontFamily: 'roboto1',
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 13.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MassagesScreen()));
                provide.massagePageSelectedColor();
              },
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 8),
                  width: 185.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: provide.seletedPageColor5 == true
                          ? Color(0xffC60000)
                          : Colors.transparent),
                  child: ListTile(
                    leading: Image.asset(
                      'assets/icons/img_13.png',
                      width: size.width * 0.05,
                    ),
                    title: Text(
                      'Messages',
                      style: TextStyle(
                        fontFamily: 'roboto1',
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 13.sp,
                      ),
                    ),
                  ),
                ),
              ),
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
                child: Container(
                  margin: EdgeInsets.only(left: 8),
                  width: 185.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: provide.seletedPageColor6 == true
                          ? Colors.red
                          : Colors.transparent),
                  child: ListTile(
                    leading: Image.asset(
                      'assets/icons/img_14.png',
                      width: size.width * 0.05,
                    ),
                    title: Text(
                      'Notifications',
                      style: TextStyle(
                        fontFamily: 'roboto1',
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 13.sp,
                      ),
                    ),
                  ),
                ),
              ),
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
                child: Container(
                  margin: EdgeInsets.only(left: 8),
                  width: 185.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: provide.seletedPageColor8 == true
                          ? Colors.red
                          : Colors.transparent),
                  child: ListTile(
                    leading: Image.asset(
                      'assets/icons/img_15.png',
                      width: size.width * 0.05,
                    ),
                    title: Text(
                      'Opportunities',
                      style: TextStyle(
                        fontFamily: 'medium',
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 13.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.only(left: 30, bottom: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.settings,
                      size: size.width * 0.05, color: Colors.white),
                  SizedBox(width: 10),
                  Text(
                    'Setting',
                    style: TextStyle(
                        fontFamily: 'roboto1',
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 13.sp),
                  ),
                  SizedBox(width: size.width * 0.04),
                  Container(
                    width: 1.w,
                    height: 20.h,
                    decoration: BoxDecoration(color: Colors.white),
                  ),
                  SizedBox(width: size.width * 0.04),
                  Text(
                    'Log Out',
                    style: TextStyle(
                      fontSize: 13.sp,
                      color: Colors.white,
                      fontFamily: 'roboto1',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            )
          ],
        );
      }),
    );
  }
}
