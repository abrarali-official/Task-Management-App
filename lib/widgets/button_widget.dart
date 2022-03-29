import 'package:flutter/material.dart';
import 'package:flutter_golang_yt/colors/app_colors.dart';

class ButtonWidget extends StatefulWidget {
  final Color color;
  final String text;
  final Color textColor;

  const ButtonWidget(
      {Key? key,
      required this.text,
      required this.textColor,
      required this.color})
      : super(key: key);
  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        height: MediaQuery.of(context).size.height / 14,
        decoration: BoxDecoration(
          // color: Color(0xFF202e59)
          color: AppColors.mainColor,
          borderRadius: BorderRadius.circular(40),
        ),
        child: const Center(
          child: Text(
            "Add Task",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ));
  }
}
