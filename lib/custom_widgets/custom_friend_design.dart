// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFriendsDesign extends StatelessWidget {
  const CustomFriendsDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color(0xffCCCCCC).withOpacity(0.5), width: 1),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 40.w,
            height: 40.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                    image: AssetImage('assets/icons/img_27.png'),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            'Kyle Hopkins',
            style: TextStyle(
                fontFamily: 'medium',
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: Color(0xff19212C)),
          )
        ],
      ),
    );
  }
}
