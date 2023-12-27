// ignore_for_file: prefer_const_constructors

import 'package:agape_acts_app/custom_widgets/custom_round_button.dart';
import 'package:agape_acts_app/screens/home_screens/home_screen.dart';

import 'package:agape_acts_app/screens/onboarding/onboarding_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController pageController = PageController();

  continueMethod() {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => SizedBox()));
  }

  int currentpage = 0;
  onChange(int index) {
    setState(() {
      currentpage = index;
    });
  }

  var indess = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: size.width,
                  height: 200.h,
                  decoration: BoxDecoration(
                    color: Color(0xffC60000),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 50, left: 20),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Image.asset(
                        'assets/icons/img_4.png',
                        width: 100.w,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 90),
                  width: size.width,
                  height: 310.h,
                  child: PageView.builder(
                    controller: pageController,
                    onPageChanged: onChange,
                    itemCount: OnBaoardingData().OnboardData.length,
                    itemBuilder: (context, index) {
                      indess = index;
                      return Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    '${OnBaoardingData().OnboardData[index]['image']}'),
                                fit: BoxFit.contain)),
                      );
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Padding(
                padding: EdgeInsets.only(left: 110),
                child: Row(
                    children: List<Widget>.generate(
                        OnBaoardingData().OnboardData.length, (index) {
                  return AnimatedContainer(
                    alignment: Alignment.bottomLeft,
                    duration: const Duration(milliseconds: 200),
                    height: 10,
                    width: (index == currentpage) ? 15 : 10,
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: (index == currentpage)
                            ? const Color(0xffC60000)
                            : Color(0xffE3E3E3)),
                  );
                })),
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Text(
              '${OnBaoardingData().OnboardData[indess]['title']}',
              style: TextStyle(
                fontFamily: 'roboto1',
                color: Colors.black.withOpacity(0.7),
                fontWeight: FontWeight.w600,
                fontSize: 16.sp,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 18.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 13),
              child: Text(
                '${OnBaoardingData().OnboardData[indess]['descreption']}',
                style: TextStyle(
                  fontFamily: 'roboto1',
                  color: Color(0xff8C8A8A).withOpacity(0.9),
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            CustomRoundButon(
              borderRadius: BorderRadius.circular(80),
              title: 'Continue',
              textStyle: TextStyle(
                  fontFamily: 'roboto1',
                  fontWeight: FontWeight.w600,
                  fontSize: 15.sp,
                  color: Colors.white),
              color: Color(0xffC60000),
              onTap: () {
                indess == 6
                    ? Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()))
                    : pageController.nextPage(
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.bounceIn);
              },
              width: 320.w,
              height: 50,
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
