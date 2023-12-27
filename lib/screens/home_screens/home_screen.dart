// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:agape_acts_app/custom_widgets/buttom_sheet.dart';
import 'package:agape_acts_app/provider/provider_class.dart';
import 'package:agape_acts_app/screens/home_screens/home_screen_catages/all_membars.dart';
import 'package:agape_acts_app/screens/home_screens/home_screen_catages/friends_catage.dart';
import 'package:agape_acts_app/screens/home_screens/side_menu_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<SideMenuState> sideMenuState = GlobalKey<SideMenuState>();

  int value = 0;

  getVlaue(int x) {
    value = x;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SideMenu(
        inverse: false,
        closeIcon: Icon(null),
        maxMenuWidth: 260.w,
        menu: SideMenuList(),
        key: sideMenuState,
        type: SideMenuType.shrinkNSlide,
        background: Color(0xff233347),
        child: ChangeNotifierProvider(
          create: (context) => Provider_Class(),
          child: Consumer<Provider_Class>(builder: (context, provider, child) {
            return Scaffold(
                appBar: AppBar(
                  actions: [
                    IconButton(
                        onPressed: () {
                          ButtomSheet().showPersistentBottomSheet(context);
                        },
                        icon: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ))
                  ],
                  centerTitle: true,
                  automaticallyImplyLeading: false,
                  backgroundColor: Color(0xffC60000),
                  title: Padding(
                    padding: EdgeInsets.only(top: 10.w),
                    child: Text(
                      'Home',
                      style: TextStyle(
                          fontSize: size.width * 0.05,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'roboto1',
                          color: Colors.white),
                    ),
                  ),
                  leading: Padding(
                      padding: EdgeInsets.only(top: 10, right: 18, left: 10),
                      child: GestureDetector(
                          onTap: () {
                            if (sideMenuState.currentState!.isOpened) {
                              sideMenuState.currentState!.closeSideMenu();
                            } else {
                              sideMenuState.currentState!.openSideMenu();
                            }
                          },
                          child: Image.asset(
                            'assets/icons/img_5.png',
                            width: size.width * 0.12,
                          ))),
                ),
                body: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    value == 0
                        ? FriendsCatages()
                        : value == 1
                            ? AllMember()
                            : SizedBox(),
                    Container(
                        margin: EdgeInsets.only(top: 0),
                        width: size.width,
                        height: 55.h,
                        decoration: BoxDecoration(
                          color: Color(0xffC60000),
                        ),
                        // color: Colors.green),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.05, vertical: 5),
                          child: TextField(
                            style: TextStyle(
                                fontFamily: 'roboto1',
                                fontWeight: FontWeight.w600,
                                fontSize: 15.sp,
                                color: Colors.white),
                            decoration: InputDecoration(
                              hintText: 'Search here...',
                              hintStyle: TextStyle(
                                  fontFamily: 'roboto1',
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Icon(
                                  Icons.search,
                                  size: 23,
                                  color: Colors.white,
                                ),
                              ),
                              fillColor: Color(0xffC60000),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(80),
                                  borderSide: const BorderSide(
                                      color: Colors.white, width: 1)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(80),
                                  borderSide: const BorderSide(
                                      color: Colors.white, width: 1)),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: size.height * 0.01, horizontal: 20),
                              border: InputBorder.none,
                            ),
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 85),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              getVlaue(0);
                              provider.changeFriendsColor();
                            },
                            child: Container(
                              width: 170.w,
                              height: 45.h,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                  color: provider.seletedFriendsColor == true
                                      ? Color(0xffC60000)
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(6),
                                  border:
                                      Border.all(color: Colors.grey, width: 1)),
                              child: Center(
                                child: Text('Freinds',
                                    style: TextStyle(
                                        fontFamily: 'roboto1',
                                        fontSize: 14.sp,
                                        fontWeight:
                                            provider.seletedAllMembarColor ==
                                                    true
                                                ? FontWeight.w500
                                                : FontWeight.w600,
                                        color:
                                            provider.seletedFriendsColor == true
                                                ? Colors.white
                                                : Color(0xffA4A4A4))),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              getVlaue(1);
                              provider.changeAllMembarColor();
                            },
                            child: Container(
                              width: 170.w,
                              height: 45.h,
                              margin: EdgeInsets.only(right: 5),
                              decoration: BoxDecoration(
                                  color: provider.seletedAllMembarColor == true
                                      ? Color(0xffC60000)
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(6),
                                  border:
                                      Border.all(color: Colors.grey, width: 1)),
                              child: Center(
                                child: Text(
                                  'All Membar',
                                  style: TextStyle(
                                      fontFamily: 'roboto1',
                                      fontSize: 14.sp,
                                      fontWeight:
                                          provider.seletedAllMembarColor == true
                                              ? FontWeight.w600
                                              : FontWeight.w500,
                                      color: provider.seletedAllMembarColor ==
                                              true
                                          ? Colors.white
                                          : Color(0xffA4A4A4).withOpacity(0.9)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ));
          }),
        ));
  }
}
