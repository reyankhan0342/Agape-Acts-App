// ignore_for_file: prefer_const_constructors

import 'package:agape_acts_app/custom_widgets/custom_round_button.dart';
import 'package:agape_acts_app/screens/authentication/login_screen.dart';
import 'package:agape_acts_app/screens/authentication/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: screenSize.width,
                alignment: Alignment.center,
                height: 200.h,
                decoration: BoxDecoration(
                  color: Color(0xffC60000),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                ),
                child: Image.asset(
                  'assets/icons/img.png',
                  width: 120.w,
                ),
              ),
              SizedBox(
                height: 90.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  'Congratulate those who do\n positive deeds',
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontFamily: 'roboto1',
                      fontWeight: FontWeight.w700,
                      color: Color(0xff3E3E3E)),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Applaud, Explore & Share with your friends',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'roboto1',
                      fontSize: 13.sp,
                      color: Color(0xff9E9E9E)),
                ),
              ),
              SizedBox(
                height: 70.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 50.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xffF5F5F5),
                    ),
                    child: Image.asset(
                      'assets/icons/img_1.png',
                      width: 10.w,
                      height: 20.sp,
                    ),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 50.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xffF5F5F5),
                    ),
                    child: Image.asset(
                      'assets/icons/img_2.png',
                      width: 25.w,
                      height: 21.h,
                    ),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 50.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xffF5F5F5),
                    ),
                    child: Image.asset(
                      'assets/icons/img_3.png',
                      width: 28.w,
                      height: 17.sp,
                    ),
                  )
                ],
              ),
              SizedBox(height: 40.h),
              CustomRoundButon(
                  borderRadius: BorderRadius.circular(29),
                  title: 'Log in',
                  textStyle: TextStyle(
                      fontFamily: 'roboto1',
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                      fontSize: 15.sp),
                  color: Color(0xffC60000),
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  width: 320.w,
                  height: 50),
              SizedBox(
                height: 10,
              ),
              CustomRoundButon(
                  borderRadius: BorderRadius.circular(29),
                  title: 'Create Account',
                  textStyle: TextStyle(
                      fontFamily: 'roboto1',
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                      fontSize: 15.sp),
                  color: Color(0xffC60000),
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => SigUpScreen()));
                  },
                  width: 320.w,
                  height: 50),
              SizedBox(
                height: 10.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
