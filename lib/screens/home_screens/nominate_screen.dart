// ignore_for_file: prefer_const_constructors

import 'package:agape_acts_app/custom_widgets/buttom_sheet.dart';
import 'package:agape_acts_app/provider/provider_class.dart';
import 'package:agape_acts_app/screens/home_screens/side_menu_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import 'package:video_player/video_player.dart';

class NominateScreen extends StatefulWidget {
  const NominateScreen({super.key});

  @override
  State<NominateScreen> createState() => _NominateScreenState();
}

class _NominateScreenState extends State<NominateScreen> {
  final GlobalKey<SideMenuState> sideMenuState = GlobalKey<SideMenuState>();

  late VideoPlayerController controller;
  late Future<void> initializeVideoPlayerFuture;

  @override
  void initState() {
    controller = VideoPlayerController.asset('assets/icons/gymvideo.mp4');
    initializeVideoPlayerFuture = controller.initialize();
    super.initState();
  }

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
        menu: SideMenuList(),
        key: sideMenuState,
        closeIcon: Icon(null),
        type: SideMenuType.shrinkNSlide,
        background: const Color(0xff233347),
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
                  backgroundColor: const Color(0xffC60000),
                  title: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Nomination',
                      style: TextStyle(
                          fontSize: size.width * 0.05,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'public',
                          color: Colors.white),
                    ),
                  ),
                  leading: Padding(
                      padding:
                          const EdgeInsets.only(top: 10, right: 15, left: 15),
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
                body: SingleChildScrollView(
                    child: Column(children: [
                  Container(
                    margin: EdgeInsets.only(top: 10.h),
                    width: 355.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    'Dark_Emeralds',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'roboto1',
                                        fontSize: 14.sp),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0, right: 40),
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
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              width: size.width,
                              height: 150.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: FutureBuilder(
                                  future: initializeVideoPlayerFuture,
                                  builder: (context, snapshot) {
                                    if (snapshot.connectionState ==
                                        ConnectionState.done) {
                                      return AspectRatio(
                                        aspectRatio:
                                            controller.value.aspectRatio,
                                        child: VideoPlayer(controller),
                                      );
                                    } else {
                                      return const Center(
                                        child: CircularProgressIndicator(),
                                      );
                                    }
                                  },
                                ),
                              ),
                            ),
                            AnimatedOpacity(
                              opacity: controller.value.isPlaying ? 0.0 : 1.0,
                              duration: Duration(milliseconds: 400),
                              child: Center(
                                child: Container(
                                  margin: EdgeInsets.only(top: 70.w),
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        if (controller.value.isPlaying) {
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
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          width: size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Color(0xffCCCCCC),
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Why did you give?',
                                style: TextStyle(
                                  fontFamily: 'roboto1',
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff3E3E3E),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    width: 155.w,
                                    height: 30.h,
                                    decoration: BoxDecoration(
                                      color: Color(0xff3576BF),
                                      border: Border.all(
                                          color: Colors.grey.withOpacity(0.4),
                                          width: 2),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 2.0),
                                        child: Text(
                                          'Spontaneous',
                                          style: TextStyle(
                                              fontFamily: 'roboto1',
                                              color: Colors.white,
                                              fontSize: 13.sp,
                                              fontWeight: FontWeight.w500),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    width: 155.w,
                                    height: 30.h,
                                    decoration: BoxDecoration(
                                      color: Color(0xff842CB7),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Random',
                                        style: TextStyle(
                                            fontFamily: 'roboto1',
                                            color: Colors.white,
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.w500),
                                        textAlign: TextAlign.center,
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
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    width: 155.w,
                                    height: 30.h,
                                    decoration: BoxDecoration(
                                      color: Color(0xffE1692D),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Bountiful',
                                        style: TextStyle(
                                            fontFamily: 'roboto1',
                                            color: Colors.white,
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.w500),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    width: 155.w,
                                    height: 30.h,
                                    decoration: BoxDecoration(
                                      color: Color(0xffE1A93C),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Heart of Gold',
                                        style: TextStyle(
                                            fontFamily: 'roboto1',
                                            color: Colors.white,
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.w500),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'The Spontaneous Giver gives based on a sudden \n inner impulse.',
                                style: TextStyle(
                                  fontFamily: 'roboto1',
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          padding: EdgeInsets.all(12),
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          width: size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Color(0xffCCCCCC),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Do you accept this nomination?',
                                style: TextStyle(
                                  fontFamily: 'roboto6',
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      width: size.width * 0.34,
                                      height: 27.h,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xffC4C4C4), width: 1),
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Yas',
                                          style: TextStyle(
                                              fontFamily: 'public',
                                              color: Colors.black,
                                              fontSize: size.width * 0.03,
                                              fontWeight: FontWeight.w400),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      width: size.width * 0.34,
                                      height: 27.h,
                                      decoration: BoxDecoration(
                                        color: Color(0xffC60000),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'No',
                                          style: TextStyle(
                                              fontFamily: 'public',
                                              color: Colors.white,
                                              fontSize: size.width * 0.03,
                                              fontWeight: FontWeight.w400),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ])));
          }),
        ));
  }
}
