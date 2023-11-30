import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants/constants.dart';

class BottomButton extends StatelessWidget {
  final void Function()? onTap;
  final String title;

  const BottomButton(
      {super.key, required this.onTap, this.title = "Calculate"});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 10, bottom: 10),
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
          color: Color(0xFFEB1555),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        padding: EdgeInsets.only(bottom: 5),
        child: Center(
          child: Text(
            title,
            style: kButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
