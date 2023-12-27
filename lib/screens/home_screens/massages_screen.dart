// ignore_for_file: prefer_const_constructors

import 'package:agape_acts_app/custom_widgets/buttom_sheet.dart';
import 'package:agape_acts_app/provider/provider_class.dart';
import 'package:agape_acts_app/screens/home_screens/chat_screen.dart';
import 'package:agape_acts_app/screens/home_screens/side_menu_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class MassagesScreen extends StatefulWidget {
  const MassagesScreen({super.key});

  @override
  State<MassagesScreen> createState() => _MassagesScreenState();
}

class _MassagesScreenState extends State<MassagesScreen> {
  final GlobalKey<SideMenuState> sideMenuState = GlobalKey<SideMenuState>();

  int value = 0;

  getVlaue(int x) {
    value = x;
    setState(() {});
  }

  List images = [
    'assets/icons/img_20.png',
    'assets/icons/img_21.png',
    'assets/icons/img_22.png',
    'assets/icons/img_25.png',
    'assets/icons/img_27.png',
    'assets/icons/img_25.png',
    'assets/icons/img_26.png',
    'assets/icons/img_27.png',
    'assets/icons/img_20.png',
    'assets/icons/img_21.png',
    'assets/icons/img_22.png',
    'assets/icons/img_25.png',
    'assets/icons/img_27.png',
    'assets/icons/img_27.png',
    'assets/icons/img_25.png',
  ];
  List color = [
    Colors.red,
    Colors.green,
    Colors.black,
    Colors.red,
    Colors.green,
    Colors.black,
    Colors.yellow,
    Colors.orange,
    Colors.red,
    Colors.green,
    Colors.black,
    Colors.yellow,
    Colors.orange,
    Colors.yellow,
    Colors.orange,
  ];

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
                      'Messages',
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ListView.builder(
                          itemCount: images.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ChatScreen(name: 'Eddie Jacobs')));
                              },
                              child: Container(
                                margin:
                                    EdgeInsets.only(top: 15, left: 8, right: 8),
                                width: size.width,
                                height: 78,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left: 10),
                                          width: 40.w,
                                          height: 40.h,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              image: DecorationImage(
                                                  image:
                                                      AssetImage(images[index]),
                                                  fit: BoxFit.contain)),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              left: 38.w, top: 2),
                                          width: 10.w,
                                          height: 10.h,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              color: color[index]),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20.0, left: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Eddie Jacobs',
                                            style: TextStyle(
                                              fontFamily: 'public',
                                              fontSize: size.width * 0.04,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff19212C),
                                            ),
                                          ),
                                          Text(
                                            'EWinner s gold from personal garbage',
                                            style: TextStyle(
                                              fontFamily: '',
                                              fontSize: size.width * 0.03,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff757C83),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      margin:
                                          EdgeInsets.only(top: 55, right: 10),
                                      child: Row(
                                        children: [
                                          Text(
                                            '3:57 ',
                                            style: TextStyle(
                                              fontFamily: 'public',
                                              fontSize: size.width * 0.03,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff757C83),
                                            ),
                                          ),
                                          Text(
                                            'am ',
                                            style: TextStyle(
                                              fontFamily: 'public',
                                              fontSize: size.width * 0.03,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff757C83),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                ));
          }),
        ));
  }
}
