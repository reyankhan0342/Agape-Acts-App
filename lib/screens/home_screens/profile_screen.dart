// ignore_for_file: prefer_const_constructors

import 'package:agape_acts_app/custom_widgets/buttom_sheet.dart';
import 'package:agape_acts_app/provider/provider_class.dart';
import 'package:agape_acts_app/screens/home_screens/side_menu_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import 'package:video_player/video_player.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final GlobalKey<SideMenuState> sideMenuState = GlobalKey<SideMenuState>();

  late VideoPlayerController controller;
  late Future<void> initializeVideoPlayerFuture;

  @override
  void initState() {
    controller = VideoPlayerController.asset('assets/icons/gymvideo.mp4');
    initializeVideoPlayerFuture = controller.initialize();
    super.initState();
  }

  List images = [
    'assets/icons/img_30.png',
    'assets/icons/img_31.png',
    'assets/icons/img_32.png',
    'assets/icons/img_33.png',
    'assets/icons/img_34.png',
    'assets/icons/img_32.png',
    'assets/icons/img_33.png',
    'assets/icons/img_34.png',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SideMenu(
      inverse: false,
      menu: SideMenuList(),
      key: sideMenuState,
      type: SideMenuType.shrinkNSlide,
      background: const Color(0xff233347),
      child: ChangeNotifierProvider(
        create: (context) => Provider_Class(),
        child: Consumer<Provider_Class>(
          builder: (context, provider, child) {
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
                backgroundColor: const Color(0xffC60000),
                title: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: size.width * 0.05,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'public',
                      color: Colors.white,
                    ),
                  ),
                ),
                leading: Padding(
                  padding: const EdgeInsets.only(top: 10, right: 15, left: 15),
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
                    ),
                  ),
                ),
              ),
              body: SingleChildScrollView(
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      width: size.width,
                      height: size.height * 0.2,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/icons/img_28.png'),
                            fit: BoxFit.cover),
                        color: Colors.green,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 105, right: 286),
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('assets/icons/img_29.png'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Column(
                        children: [
                          const SizedBox(height: 174),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Anisha Watson',
                              style: TextStyle(
                                fontFamily: 'roboto1',
                                fontSize: size.width * 0.04,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xff19212C),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                height: 3,
                              ),
                              Image.asset(
                                'assets/icons/img_7.png',
                                width: 12,
                                color: const Color(0xffA4A4A4),
                              ),
                              const SizedBox(
                                width: 5.6,
                              ),
                              Text(
                                'Georgia',
                                style: TextStyle(
                                  fontFamily: '',
                                  fontSize: 12.sp,
                                  color: const Color(0xffA4A4A4),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                '18',
                                style: TextStyle(
                                  fontFamily: 'roboto1',
                                  fontSize: 12.sp,
                                  color: const Color(0xff19212C),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                'Friends',
                                style: TextStyle(
                                  fontFamily: '',
                                  fontSize: size.width * 0.03,
                                  color: const Color(0xffA4A4A4),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.13,
                              ),
                              Text(
                                '314',
                                style: TextStyle(
                                  fontFamily: 'roboto1',
                                  fontSize: 12.sp,
                                  color: const Color(0xff19212C),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                ' Agape Tokens',
                                style: TextStyle(
                                  fontFamily: '',
                                  fontSize: size.width * 0.03,
                                  color: const Color(0xffA4A4A4),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.13,
                              ),
                              Text(
                                '1.3k',
                                style: TextStyle(
                                  fontFamily: 'roboto1',
                                  fontSize: 12.sp,
                                  color: const Color(0xff19212C),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                'Applaud',
                                style: TextStyle(
                                  fontFamily: '',
                                  fontSize: size.width * 0.03,
                                  color: const Color(0xffA4A4A4),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            color: Color(0xffF0F2F5),
                            indent: 0,
                            thickness: 7,
                            endIndent: 0,
                          ),
                          SizedBox(
                            height: size.height * 0.03,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Agape Badges',
                              style: TextStyle(
                                fontFamily: 'medium',
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Container(
                            height: 90.h,
                            width: 350.w,
                            child: ListView.builder(
                                itemCount: images.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return Container(
                                    margin: EdgeInsets.only(left: 20),
                                    width: 50.w,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(80),
                                        image: DecorationImage(
                                            image: AssetImage(images[index]))),
                                  );
                                }),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'About',
                              style: TextStyle(
                                fontFamily: '',
                                fontSize: size.width * 0.04,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              width: size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xffF0F2F5),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'A Passionate coder.Loves to swim and dance.An Enthusiastic Designer. Loves reading books.'
                                  ' Always being positive.Sarcastic humor.',
                                  style: TextStyle(
                                    fontFamily: 'roboto1',
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0XFF424242),
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Row(
                                children: [
                                  Text(
                                    'Acts of Kindness',
                                    style: TextStyle(
                                        fontSize: size.width * 0.04,
                                        color: Colors.black,
                                        fontFamily: '',
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Container(
                            width: 345.w,
                            height: 200,
                            child: Expanded(
                              child: ListView.builder(
                                  itemCount: 3,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      margin: EdgeInsets.only(top: 10.h),
                                      width: 345.w,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          border: Border.all(
                                              color: Color(0xffCCCCCC),
                                              width: 1)),
                                      child: Column(children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                'assets/icons/img_17.png',
                                                width: 50.w,
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const SizedBox(
                                                    height: 7,
                                                  ),
                                                  Text(
                                                    'Dark_Emeralds',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontFamily: 'roboto1',
                                                        fontSize: 14.sp),
                                                  ),
                                                  Container(
                                                    margin:
                                                        EdgeInsets.only(top: 5),
                                                    width: size.width * 0.20.w,
                                                    height: 18.h,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xff3576BF)
                                                          .withOpacity(0.9),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        'Spontaneous',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'roboto1',
                                                            color: Colors.white,
                                                            fontSize: 10.sp,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Spacer(),
                                              Container(
                                                width: 60.w,
                                                height: 25.h,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color:
                                                            Color(0xffCCCCCC),
                                                        width: 1),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    color: Color(0xffCCCCCC)
                                                        .withOpacity(0.3)),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Image.asset(
                                                      'assets/icons/img_18.png',
                                                      width: size.width * 0.03,
                                                    ),
                                                    const SizedBox(
                                                      width: 8,
                                                    ),
                                                    Text(
                                                      '47',
                                                      style: TextStyle(
                                                        fontFamily: 'public',
                                                        fontSize:
                                                            size.width * 0.03,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.black,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 15.0, right: 40),
                                          child: Text(
                                            'Lloyd was very helpful today by talking my mother food and snacks for the week.',
                                            style: TextStyle(
                                              fontFamily: 'medium',
                                              fontSize: 12.sp,
                                              color: Color(0xff424242),
                                              fontWeight: FontWeight.w600,
                                            ),
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Stack(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  horizontal: 5),
                                              width: size.width,
                                              height: 150.h,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                child: FutureBuilder(
                                                  future:
                                                      initializeVideoPlayerFuture,
                                                  builder: (context, snapshot) {
                                                    if (snapshot
                                                            .connectionState ==
                                                        ConnectionState.done) {
                                                      return AspectRatio(
                                                        aspectRatio: controller
                                                            .value.aspectRatio,
                                                        child: VideoPlayer(
                                                            controller),
                                                      );
                                                    } else {
                                                      return const Center(
                                                        child:
                                                            CircularProgressIndicator(),
                                                      );
                                                    }
                                                  },
                                                ),
                                              ),
                                            ),
                                            AnimatedOpacity(
                                              opacity:
                                                  controller.value.isPlaying
                                                      ? 0.0
                                                      : 1.0,
                                              duration:
                                                  Duration(milliseconds: 400),
                                              child: Center(
                                                child: Container(
                                                  margin: EdgeInsets.only(
                                                      top: 70.w),
                                                  child: IconButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        if (controller
                                                            .value.isPlaying) {
                                                          controller.pause();
                                                        } else {
                                                          controller.play();
                                                        }
                                                      });
                                                    },
                                                    icon: Icon(
                                                      controller.value.isPlaying
                                                          ? Icons.pause
                                                          : Icons.play_arrow,
                                                      color: Colors.white,
                                                      size: 30,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Stack(
                                              clipBehavior: Clip.none,
                                              children: [
                                                Positioned(
                                                  child: Image.asset(
                                                    'assets/icons/img_21.png',
                                                    width: 25.w,
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 15,
                                                  child: Image.asset(
                                                    'assets/icons/img_20.png',
                                                    width: 25.w,
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 30,
                                                  child: Image.asset(
                                                    'assets/icons/img_22.png',
                                                    width: 25.w,
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: 40.w,
                                            ),
                                            Text(
                                              'Connie and 56 other likes it',
                                              style: TextStyle(
                                                  fontFamily: 'medium',
                                                  fontSize: size.width * 0.03,
                                                  fontWeight: FontWeight.w700,
                                                  color: Color(0xff737373)),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10.w,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                  left: 20, bottom: 5),
                                              width: 90.w,
                                              height: 25.h,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(70),
                                                  color: Color(0xffC60000)
                                                      .withOpacity(0.1)),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Image.asset(
                                                    'assets/icons/img_23.png',
                                                    width: size.width * 0.05,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    'Applaud',
                                                    style: TextStyle(
                                                      fontFamily: 'medium',
                                                      fontSize: 11.w,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Color(0xffC60000),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: 100.w,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(80),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Image.asset(
                                                    'assets/icons/img_18.png',
                                                    width: size.width * 0.04,
                                                    color: Color(0xff8C8A8A),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    'Comment',
                                                    style: TextStyle(
                                                      fontFamily: 'roboto1',
                                                      fontSize: 12.w,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color(0xff8C8A8A),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: 100.w,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(80),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Image.asset(
                                                    'assets/icons/img_24.png',
                                                    width: size.width * 0.04,
                                                    color: Color(0xff8C8A8A),
                                                  ),
                                                  SizedBox(
                                                    width: 5.w,
                                                  ),
                                                  Text(
                                                    'Share',
                                                    style: TextStyle(
                                                      fontFamily: 'roboto1',
                                                      fontSize: 12.w,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color(0xff8C8A8A),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 50,
                                        ),
                                      ]),
                                    );
                                  }),
                            ),
                          ),
                          SizedBox(
                            height: 1,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
