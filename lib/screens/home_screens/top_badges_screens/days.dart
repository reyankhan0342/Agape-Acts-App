import 'package:agape_acts_app/custom_widgets/custom_top_giver_days_row.dart';
import 'package:flutter/material.dart';

class DaysScreen extends StatelessWidget {
  DaysScreen({super.key});
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

    return Expanded(
      child: ListView.builder(
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: .10),
              child: CustomTopGiverDaysRow(
                  title: Text(
                    '${names[index]}',
                    style: TextStyle(
                      fontFamily: 'public',
                      color: Color(0xff19212C),
                      fontSize: size.width * 0.04,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subTitle: Text(
                    '10 Agape Tokens',
                    style: TextStyle(
                      fontFamily: 'public',
                      color: Color(0xff757C83),
                      fontSize: size.width * 0.03,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  profileImage: Image.asset(images[index]),
                  viewPrifle: Text(
                    'View Profile',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'public',
                      fontSize: size.width * 0.03,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  )),
            );
          }),
    );
  }
}
