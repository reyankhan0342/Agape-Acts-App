// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:agape_acts_app/custom_widgets/buttom_sheet.dart';
import 'package:agape_acts_app/custom_widgets/custom_friend_design.dart';
import 'package:agape_acts_app/provider/provider_class.dart';
import 'package:agape_acts_app/screens/home_screens/home_screen_catages/all_membars.dart';
import 'package:agape_acts_app/screens/home_screens/home_screen_catages/friends_catage.dart';
import 'package:agape_acts_app/screens/home_screens/side_menu_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class FriendsScreen extends StatefulWidget {
  const FriendsScreen({Key? key});

  @override
  State<FriendsScreen> createState() => _FriendsScreen();
}

class _FriendsScreen extends State<FriendsScreen> {
  final GlobalKey<SideMenuState> sideMenuState = GlobalKey<SideMenuState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SideMenu(
        maxMenuWidth: size.width * 0.8,
        inverse: false,
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
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'Friends',
                      style: TextStyle(
                          fontSize: size.width * 0.05,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'roboto1',
                          color: Colors.white),
                    ),
                  ),
                  leading: Padding(
                      padding: EdgeInsets.only(top: 10, right: 15, left: 15),
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
                            width: size.width * 0.1,
                          ))),
                ),
                body: Column(
                  children: [
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
                                fontSize: 14.sp,
                                color: Colors.white),
                            decoration: InputDecoration(
                              hintText: 'Search here...',
                              hintStyle: TextStyle(
                                  fontFamily: 'roboto1',
                                  fontSize: 12..sp,
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
                    Expanded(
                      child: GridView.builder(
                        itemCount: 22,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisExtent: 70,
                        ),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                                top: 15.0, right: 8, left: 8),
                            child: CustomFriendsDesign(),
                          );
                        },
                      ),
                    )
                  ],
                ));
          }),
        ));
  }
}
