import 'package:flutter/material.dart';
import 'package:flutter_golang_yt/colors/app_colors.dart';

class ButtonWidget2 extends StatefulWidget {
  final Color color;
  final String text;
  final Color textColor;

  const ButtonWidget2(
      {Key? key,
      required this.text,
      required this.textColor,
      required this.color})
      : super(key: key);
  @override
  State<ButtonWidget2> createState() => _ButtonWidget2State();
}

class _ButtonWidget2State extends State<ButtonWidget2> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        height: MediaQuery.of(context).size.height / 14,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
        ),
        child: const Center(
          child: Text(
            "View All",
            style: TextStyle(
              fontSize: 20,
              color: AppColors.smallTextColor,
            ),
          ),
        ));
  }
}
