// ignore_for_file: prefer_const_constructors

import 'package:agape_acts_app/provider/provider_class.dart';
import 'package:agape_acts_app/screens/home_screens/side_menu_list.dart';
import 'package:agape_acts_app/screens/home_screens/top_giver_screen/all.dart';
import 'package:agape_acts_app/screens/home_screens/top_giver_screen/days.dart';
import 'package:agape_acts_app/screens/home_screens/top_giver_screen/month.dart';
import 'package:agape_acts_app/screens/home_screens/top_giver_screen/week.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class TopBadges extends StatelessWidget {
  TopBadges({super.key});

  final GlobalKey<SideMenuState> sideMenuState = GlobalKey<SideMenuState>();

  @override
  Widget build(BuildContext context) {
    print('object');
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
                  centerTitle: true,
                  automaticallyImplyLeading: false,
                  backgroundColor: Color(0xffC60000),
                  title: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'Top Givers',
                      style: TextStyle(
                          fontSize: size.width * 0.04,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'public',
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: size.width * 0.89,
                        height: size.height * 0.05,
                        decoration: BoxDecoration(
                          color: Color(0xffFCFCFC),
                          border:
                              Border.all(color: Color(0xffCCCCCC), width: 1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                provider.getVlaue(0);
                                provider.daysMethod();
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: size.width * 0.2,
                                height: size.height * .08,
                                decoration: BoxDecoration(
                                    border: provider.days == true
                                        ? Border.all(
                                            color: Color(0xffC60000)
                                                .withOpacity(0.5),
                                            width: 1)
                                        : Border(),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Text(
                                  'Days',
                                  style: TextStyle(
                                    color: provider.days == true
                                        ? Color(0xffC60000)
                                        : Color(0xffA4A4A4),
                                    fontFamily: 'public',
                                    fontSize: size.width * 0.04,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.01,
                            ),
                            GestureDetector(
                              onTap: () {
                                provider.getVlaue(1);
                                provider.weekMethod();
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: size.width * 0.2,
                                height: size.height * .08,
                                decoration: BoxDecoration(
                                    border: provider.week == true
                                        ? Border.all(
                                            color: Color(0xffC60000)
                                                .withOpacity(0.5),
                                            width: 1)
                                        : Border(),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Text(
                                  'Week',
                                  style: TextStyle(
                                    fontFamily: 'public',
                                    fontSize: size.width * 0.04,
                                    color: Color(0xffA4A4A4),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.01,
                            ),
                            GestureDetector(
                              onTap: () {
                                provider.getVlaue(2);
                                provider.monthMethod();
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: size.width * 0.2,
                                height: size.height * .08,
                                decoration: BoxDecoration(
                                    border: provider.month == true
                                        ? Border.all(
                                            color: Color(0xffC60000)
                                                .withOpacity(0.5),
                                            width: 1)
                                        : Border(),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Text(
                                  'Month',
                                  style: TextStyle(
                                    fontFamily: 'public',
                                    color: Color(0xffA4A4A4),
                                    fontSize: size.width * 0.04,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                            GestureDetector(
                              onTap: () {
                                provider.getVlaue(3);
                                provider.allMethod();
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: size.width * 0.24,
                                height: size.height * .08,
                                decoration: BoxDecoration(
                                    border: provider.all == true
                                        ? Border.all(
                                            color: Color(0xffC60000)
                                                .withOpacity(0.5),
                                            width: 1)
                                        : Border(),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Text(
                                  'All',
                                  style: TextStyle(
                                    fontFamily: 'public',
                                    color: Color(0xffA4A4A4),
                                    fontSize: size.width * 0.04,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    provider.value == 0
                        ? DaysScreen()
                        : provider.value == 1
                            ? WeekScreen()
                            : provider.value == 2
                                ? MonthScreen()
                                : provider.value == 3
                                    ? AllScreen()
                                    : SizedBox(
                                        height: 20,
                                      ),
                  ],
                ));
          }),
        ));
  }
}
