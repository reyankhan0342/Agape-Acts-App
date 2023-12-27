// ignore_for_file: prefer_const_constructors

import 'package:agape_acts_app/provider/provider_class.dart';
import 'package:agape_acts_app/screens/home_screens/home_screen_catages/acts_of_kindness.dart';
import 'package:agape_acts_app/screens/home_screens/top_badges_screens/top_badges.dart';
import 'package:agape_acts_app/screens/home_screens/top_giver_screen/top_giver.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

class FriendsCatages extends StatefulWidget {
  const FriendsCatages({super.key});

  @override
  State<FriendsCatages> createState() => _FriendsCatagesState();
}

class _FriendsCatagesState extends State<FriendsCatages> {
  late VideoPlayerController controller;
  late Future<void> initializeVideoPlayerFuture;

  @override
  void initState() {
    controller = VideoPlayerController.asset('assets/icons/gymvideo.mp4');
    initializeVideoPlayerFuture = controller.initialize();
    super.initState();
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
  ];

  List names = [
    'Jorge',
    'Maria',
    'Sara',
    'Sara',
    'Kane',
    'Juliana',
    'Kane',
    'Juliana'
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ChangeNotifierProvider(
      create: (context) => Provider_Class(),
      child: Consumer<Provider_Class>(builder: (context, provider, child) {
        return SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 120.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        Text(
                          'Acts of Kindness',
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.black.withOpacity(0.8),
                              fontFamily: 'roboto1',
                              fontWeight: FontWeight.w600),
                        ),
                        Spacer(),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ActsOfKindness()));
                            },
                            child: Text(
                              'View More',
                              style: TextStyle(
                                fontFamily: 'roboto1',
                                fontSize: 12.sp,
                                color: Color(0xffC60000),
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.underline,
                                decorationColor: Color(0xffC60000),
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.h),
                  width: 345.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0xffCCCCCC), width: 1)),
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
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                width: size.width * 0.20.w,
                                height: 18.h,
                                decoration: BoxDecoration(
                                  color: Color(0xff3576BF).withOpacity(0.9),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    'Spontaneous',
                                    style: TextStyle(
                                        fontFamily: 'roboto1',
                                        color: Colors.white,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w600),
                                    textAlign: TextAlign.center,
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
                                    color: Color(0xffCCCCCC), width: 1),
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xffCCCCCC).withOpacity(0.3)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
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
                                    fontSize: size.width * 0.03,
                                    fontWeight: FontWeight.w500,
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
                                    aspectRatio: controller.value.aspectRatio,
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
                          margin: EdgeInsets.only(left: 20, bottom: 5),
                          width: 90.w,
                          height: 25.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70),
                              color: Color(0xffC60000).withOpacity(0.1)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffC60000),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 100.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff8C8A8A),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 100.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
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
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff8C8A8A),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ]),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 18.w,
                    ),
                    Text(
                      'Top Givers',
                      style: TextStyle(
                          fontFamily: 'roboto',
                          fontSize: size.width * 0.04,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff3E3E3E)),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TopGiver()));
                      },
                      child: Text(
                        'View More',
                        style: TextStyle(
                          fontFamily: 'roboto1',
                          fontSize: 12.sp,
                          color: Color(0xffC60000),
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xffC60000),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 345.w,
                  height: 90.h,
                  decoration: BoxDecoration(
                      color: Color(0xffFCFCFC),
                      border: Border.all(color: Color(0xffCCCCCC), width: 1),
                      borderRadius: BorderRadius.circular(7)),
                  child: ListView.builder(
                      itemCount: images.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10, left: 10),
                              width: 50.w,
                              height: 50.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(80),
                                  image: DecorationImage(
                                      image: AssetImage('${images[index]}'),
                                      fit: BoxFit.contain)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, top: 2),
                              child: Text(
                                names[index],
                                style: TextStyle(
                                  fontFamily: 'medium',
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff19212C),
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 18.w,
                    ),
                    Text(
                      'Top Badges',
                      style: TextStyle(
                          fontFamily: 'roboto',
                          fontSize: size.width * 0.04,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff3E3E3E)),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TopBadges()));
                      },
                      child: Text(
                        'View More',
                        style: TextStyle(
                          fontFamily: 'roboto1',
                          fontSize: 12.sp,
                          color: Color(0xffC60000),
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xffC60000),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 350.w,
                  height: 90.h,
                  decoration: BoxDecoration(
                      color: Color(0xffFCFCFC),
                      border: Border.all(color: Color(0xffCCCCCC), width: 1),
                      borderRadius: BorderRadius.circular(7)),
                  child: ListView.builder(
                      itemCount: images.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10, left: 10),
                              width: 50.w,
                              height: 50.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(80),
                                  image: DecorationImage(
                                      image: AssetImage('${images[index]}'),
                                      fit: BoxFit.contain)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, top: 2),
                              child: Text(
                                names[index],
                                style: TextStyle(
                                  fontFamily: 'medium',
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff19212C),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                          ],
                        );
                      }),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Opportunities to Give',
                      style: TextStyle(
                          fontFamily: 'roboto',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff3E3E3E)),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'View More',
                        style: TextStyle(
                          fontFamily: 'roboto1',
                          fontSize: 12.sp,
                          color: Color(0xffC60000),
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xffC60000),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  width: 350.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                    color: Color(0xffFCFCFC),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xffCCCCCC), width: 1),
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0, left: 10),
                            child: Text(
                              'Feed Seniors',
                              style: TextStyle(
                                fontFamily: 'public',
                                color: Color(0xff3E3E3E),
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              'With Doorways for women and families',
                              style: TextStyle(
                                fontFamily: 'public',
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff8C8A8A),
                              ),
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        width: 65.w,
                        height: 23.h,
                        decoration: BoxDecoration(
                            color: Color(0xffCCCCCC).withOpacity(0.3),
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(
                                color: Color(
                                  0xffCCCCCC,
                                ),
                                width: 1)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '4.7',
                              style: TextStyle(
                                  fontFamily: 'public',
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff242424)),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              ' Miles',
                              style: TextStyle(
                                  fontFamily: 'public',
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff242424)),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 350.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                    color: Color(0xffFCFCFC),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xffCCCCCC), width: 1),
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0, left: 10),
                            child: Text(
                              'Monthly Food Distribution',
                              style: TextStyle(
                                fontFamily: 'public',
                                color: Color(0xff3E3E3E),
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              'With new creation christian church',
                              style: TextStyle(
                                fontFamily: 'public',
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff8C8A8A),
                              ),
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        width: 65.w,
                        height: 23.h,
                        decoration: BoxDecoration(
                            color: Color(0xffCCCCCC).withOpacity(0.3),
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(
                                color: Color(
                                  0xffCCCCCC,
                                ),
                                width: 1)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '5.1',
                              style: TextStyle(
                                  fontFamily: 'public',
                                  fontSize: size.width * 0.03,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff242424)),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              ' Miles',
                              style: TextStyle(
                                  fontFamily: 'public',
                                  fontSize: size.width * 0.03,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff242424)),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                )
              ]),
        );
      }),
    );
  }
}
