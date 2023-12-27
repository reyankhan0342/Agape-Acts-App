import 'package:flutter/material.dart';

class CustomTopGiverDaysRow extends StatelessWidget {
  final Text title;
  final Text subTitle;
  final Image profileImage;
  final Text viewPrifle;

  const CustomTopGiverDaysRow(
      {required this.title,
      required this.subTitle,
      required this.profileImage,
      required this.viewPrifle});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
      elevation: 6,
      child: Container(
        width: size.width * 0.9,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: ListTile(
          leading: profileImage,
          title: title,
          subtitle: subTitle,
          trailing: Container(
            width: 90,
            height: 25,
            decoration: BoxDecoration(
                color: Color(0xffC60000),
                borderRadius: BorderRadius.circular(20)),
            child: Center(child: viewPrifle),
          ),
        ),
      ),
    );
  }
}
