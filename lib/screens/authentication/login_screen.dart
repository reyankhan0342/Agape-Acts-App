// ignore_for_file: prefer_const_constructors, unnecessary_import

import 'package:agape_acts_app/custom_widgets/custom_round_button.dart';
import 'package:agape_acts_app/custom_widgets/custom_text_form_field.dart';
import 'package:agape_acts_app/screens/authentication/sign_up_screen.dart';
import 'package:agape_acts_app/screens/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  bool obsecure = true;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  FocusNode passwordFocuse = FocusNode();
  FocusNode emailFocuse = FocusNode();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: size.width,
              height: 200.h,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Image.asset(
                'assets/icons/img.png',
                width: 120.w,
                color: Color(0xffC60000),
              ),
            ),
            Container(
              width: size.width,
              height: size.height,
              decoration: BoxDecoration(
                  color: Color(0xffF5F7F9),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20))),
              child: Column(
                children: [
                  SizedBox(height: 20.h),
                  Padding(
                    padding: EdgeInsets.only(left: size.width * 0.04),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18.sp,
                          fontFamily: 'roboto1',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 62.h,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.05),
                    child: CustomTextField(
                      controller: emailController,
                      focusNode: emailFocuse,
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        size: 20,
                      ),
                      hintText: 'Email id',
                      hintstyle: TextStyle(
                        fontFamily: 'roboto1',
                        fontWeight: FontWeight.w400,
                        fontSize: 10.sp,
                        color: Color(0xff000000),
                      ),
                      textStyle: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'roboto1',
                      ),
                      borderRadiu: BorderRadius.circular(100),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.05),
                    child: CustomTextField(
                      obscureText: obsecure,
                      controller: passwordController,
                      focusNode: passwordFocuse,
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        size: 20,
                      ),
                      hintText: 'Password',
                      hintstyle: TextStyle(
                        fontFamily: 'roboto1',
                        fontWeight: FontWeight.w400,
                        fontSize: 10.sp,
                        color: Color(0xff000000),
                      ),
                      textStyle: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'roboto1',
                      ),
                      borderRadiu: BorderRadius.circular(100),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: size.width * 0.02),
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffC60000),
                          fontFamily: 'roboto1',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 76.h,
                  ),
                  CustomRoundButon(
                      borderRadius: BorderRadius.circular(80),
                      title: 'Login',
                      textStyle: TextStyle(
                          fontFamily: 'roboto1',
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp,
                          color: Colors.white),
                      color: Color(0xffC60000),
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OnBoardingScreen()));
                      },
                      width: 320.w,
                      height: 50),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t have an account?',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'roboto1',
                          color: Color(0xff000000).withOpacity(0.4),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: size.width * 0.01),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SigUpScreen()));
                          },
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                              fontFamily: 'roboto1',
                              color: Color(0xffC60000),
                              fontWeight: FontWeight.w700,
                              fontSize: 13.sp,
                              wordSpacing: 1,
                              decoration: TextDecoration.underline,
                              decorationColor: Color(
                                0xffC60000,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
