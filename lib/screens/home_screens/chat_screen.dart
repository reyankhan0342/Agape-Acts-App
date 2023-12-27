// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:agape_acts_app/custom_widgets/buttom_sheet.dart';
import 'package:agape_acts_app/provider/provider_class.dart';
import 'package:agape_acts_app/screens/home_screens/side_menu_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class ChatScreen extends StatefulWidget {
  var name;
  ChatScreen({super.key, required this.name});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
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
        closeIcon: Icon(null),
        key: sideMenuState,
        type: SideMenuType.shrinkNSlide,
        background: Color(0xff233347),
        child: ChangeNotifierProvider(
          create: (context) => Provider_Class(),
          child: Consumer<Provider_Class>(builder: (context, provider, child) {
            return GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: Scaffold(
                  backgroundColor: Color(0xffCCCCCC),
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
                        '${widget.name}',
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
                  body: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 20, left: 10),
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/icons/img_17.png'))),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: size.width * 0.7,
                                  height: 120,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 20, left: 10),
                                        width: size.width * 0.7,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              spreadRadius: 2,
                                              blurRadius: 5,
                                              offset: Offset(0, 3),
                                            ),
                                          ],
                                        ),
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 9.0),
                                            child: Text(
                                              'Last dat was good with family and friends meeting.',
                                              style: TextStyle(
                                                  fontFamily: 'public',
                                                  color: Color(0xff757C83),
                                                  fontSize: size.width * 0.03,
                                                  fontWeight: FontWeight.w600),
                                              textAlign: TextAlign.start,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 3),
                                        child: Text(
                                          '3:42 pm',
                                          style: TextStyle(
                                              fontFamily: 'public',
                                              color: Color(0xffC60000),
                                              fontSize: size.width * 0.03,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: Container(
                                width: 247,
                                height: 220,
                                decoration: BoxDecoration(
                                    color: Colors.black38,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 123,
                                          height: 110,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'assets/icons/img_35.png',
                                                  ),
                                                  fit: BoxFit.cover)),
                                        ),
                                        Container(
                                          width: 124,
                                          height: 110,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'assets/icons/img_36.png',
                                                  ),
                                                  fit: BoxFit.cover)),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 123,
                                          height: 110,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'assets/icons/img_37.png',
                                                  ),
                                                  fit: BoxFit.cover)),
                                        ),
                                        Container(
                                          width: 124,
                                          height: 110,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'assets/icons/img_35.png',
                                                  ),
                                                  fit: BoxFit.cover)),
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Text(
                                                '20',
                                                style: TextStyle(
                                                    fontFamily: 'public',
                                                    fontSize: 20,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 20, left: 10),
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/icons/img_17.png'))),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: size.width * 0.7,
                                  height: 120,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 20, left: 10),
                                        width: size.width * 0.7,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              spreadRadius: 2,
                                              blurRadius: 5,
                                              offset: Offset(0, 3),
                                            ),
                                          ],
                                        ),
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 9.0),
                                            child: Text(
                                              'Last dat was good with family and friends meeting.',
                                              style: TextStyle(
                                                  fontFamily: 'public',
                                                  color: Color(0xff757C83),
                                                  fontSize: size.width * 0.03,
                                                  fontWeight: FontWeight.w600),
                                              textAlign: TextAlign.start,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 3),
                                        child: Text(
                                          '3:42 pm',
                                          style: TextStyle(
                                              fontFamily: 'public',
                                              color: Color(0xffC60000),
                                              fontSize: size.width * 0.03,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 20, left: 10),
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/icons/img_17.png'))),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: size.width * 0.7,
                                  height: 120,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 20, left: 10),
                                        width: size.width * 0.7,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              spreadRadius: 2,
                                              blurRadius: 5,
                                              offset: Offset(0, 3),
                                            ),
                                          ],
                                        ),
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 9.0),
                                            child: Text(
                                              'Last dat was good with family and friends meeting.',
                                              style: TextStyle(
                                                  fontFamily: 'public',
                                                  color: Color(0xff757C83),
                                                  fontSize: size.width * 0.03,
                                                  fontWeight: FontWeight.w600),
                                              textAlign: TextAlign.start,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 3),
                                        child: Text(
                                          '3:42 pm',
                                          style: TextStyle(
                                              color: Color(0xffC60000),
                                              fontFamily: 'public',
                                              fontSize: size.width * 0.03,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 20, left: 10),
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/icons/img_17.png'))),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: size.width * 0.7,
                                  height: 120,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 20, left: 10),
                                        width: size.width * 0.7,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              spreadRadius: 2,
                                              blurRadius: 5,
                                              offset: Offset(0, 3),
                                            ),
                                          ],
                                        ),
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 9.0),
                                            child: Text(
                                              'Last dat was good with family and friends meeting.',
                                              style: TextStyle(
                                                  fontFamily: 'public',
                                                  color: Color(0xff757C83),
                                                  fontSize: size.width * 0.03,
                                                  fontWeight: FontWeight.w600),
                                              textAlign: TextAlign.start,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 3),
                                        child: Text(
                                          '3:42 pm',
                                          style: TextStyle(
                                              fontFamily: 'public',
                                              color: Color(0xffC60000),
                                              fontSize: size.width * 0.03,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 60.h,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          color: Colors.white,
                          width: size.width,
                          height: 60.h,
                          child: Row(
                            children: [
                              Container(
                                width: size.width * 0.8,
                                margin: EdgeInsets.only(left: 13, top: 15),
                                height: 40.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color(0xffCCCCCC),
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4.0),
                                      child: Image.asset(
                                        'assets/icons/img_39.png',
                                        width: 20,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: TextField(
                                        keyboardType: TextInputType.text,
                                        style: TextStyle(
                                            fontFamily: '',
                                            fontWeight: FontWeight.w500,
                                            fontSize: size.width * 0.05,
                                            color: Colors.white),
                                        decoration: InputDecoration(
                                          hintText: 'Type a massage ..',
                                          hintStyle: TextStyle(
                                              fontFamily: 'public',
                                              fontSize: size.width * 0.04,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black
                                                  .withOpacity(0.4)),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 10.0),
                                      child: Icon(Icons.camera_alt),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 15, left: 10),
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Color(0xffC60000),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Center(
                                    child: Icon(
                                      Icons.send,
                                      color: Colors.white,
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
            );
          }),
        ));
  }
}
