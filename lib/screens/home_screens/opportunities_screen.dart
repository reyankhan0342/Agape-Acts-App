// ignore_for_file: prefer_const_constructors

import 'package:agape_acts_app/custom_widgets/buttom_sheet.dart';
import 'package:agape_acts_app/provider/provider_class.dart';
import 'package:agape_acts_app/screens/home_screens/side_menu_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class OpportunitiesScreen extends StatefulWidget {
  const OpportunitiesScreen({super.key});

  @override
  State<OpportunitiesScreen> createState() => _OpportunitiesScreenState();
}

class _OpportunitiesScreenState extends State<OpportunitiesScreen> {
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
                backgroundColor: Color(0xffF3F3F3),
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
                      'Opportunities',
                      style: TextStyle(
                          fontSize: size.width * 0.05,
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
                  children: [
                    Container(
                      width: size.width,
                      height: 35.h,
                      decoration: BoxDecoration(
                        color: Color(0xffC60000),
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 15, bottom: 5),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            width: size.width * 0.4,
                            height: size.height * 0.070,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 1),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: DropdownButton(
                              underline: Text(''),
                              hint: Text('Select from list'),
                              value: provider
                                  .countryValue, // Set the value from the provider
                              isExpanded: true,
                              iconEnabledColor: Colors.white,

                              icon: Icon(Icons.keyboard_arrow_down,
                                  size: 20, color: Colors.black),
                              onChanged: (newValue) {
                                // provider.countryValue = newValue as String;
                                provider.setLegusCategory(newValue as String);
                              },
                              items: provider.leagusCategres.map((value) {
                                return DropdownMenuItem(
                                  value:
                                      value, // Use the current value from the loop
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                          Spacer(),
                          Container(
                            margin: EdgeInsets.only(right: 20, bottom: 5),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            width: size.width * 0.4,
                            height: size.height * 0.070,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 1),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: DropdownButton(
                              underline: Text(''),
                              hint: Text('Select from list'),
                              value: provider
                                  .countryValue, // Set the value from the provider
                              isExpanded: true,
                              iconEnabledColor: Colors.white,

                              icon: Icon(Icons.keyboard_arrow_down,
                                  size: 20, color: Colors.black),
                              onChanged: (newValue) {
                                provider.setLegusCategory(newValue as String);
                              },
                              items: provider.leagusCategres.map((value) {
                                return DropdownMenuItem(
                                  value:
                                      value, // Use the current value from the loop
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: ListView.builder(
                            itemCount: 20,
                            itemBuilder: (context, child) {
                              return Container(
                                margin:
                                    EdgeInsets.only(top: 8, left: 5, right: 5),
                                width: size.height,
                                height: size.height * 0.1,
                                child: Card(
                                  color: Color(0xffFFFFFF),
                                  elevation: 3,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // SizedBox(
                                      //   height: 10,
                                      // ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15.0, top: 10),
                                        child: Text(
                                          'Feed Seniors',
                                          style: TextStyle(
                                            fontFamily: 'roboto1',
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff19212C),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15.0),
                                            child: Text(
                                              'With Glenn Dale Fire Association,Inc.',
                                              style: TextStyle(
                                                fontFamily: 'medium',
                                                fontSize: size.width * 0.03,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xff757C83),
                                              ),
                                            ),
                                          ),
                                          Spacer(),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15.0),
                                                child: Text(
                                                  '8.8',
                                                  style: TextStyle(
                                                    fontFamily: 'roboto1',
                                                    fontSize: 11.sp,
                                                    fontWeight: FontWeight.w700,
                                                    color: Color(0xff3E454B)
                                                        .withOpacity(0.9),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 2.0, right: 10),
                                                child: Text(
                                                  'Miles',
                                                  style: TextStyle(
                                                    fontFamily: 'roboto1',
                                                    fontSize: 12.sp,
                                                    fontWeight: FontWeight.w700,
                                                    color: Color(0xff3E454B)
                                                        .withOpacity(0.9),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                    )
                  ],
                ));
          }),
        ));
  }
}
