import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Color backgroundcolor;
  final String text;
  final Color textColor;
  const ButtonWidget(
      {Key? key,
      required this.backgroundcolor,
      required this.text,
      required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        height: MediaQuery.of(context).size.height / 14,
        decoration: BoxDecoration(
          color: backgroundcolor,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20,
              color: textColor,
            ),
          ),
        ));
  }
}

// class ButtonWidget extends StatefulWidget {
//   final Color color;
//   final String text;
//   final Color textColor;

//   const ButtonWidget(
//       {Key? key,
//       required this.text,
//       required this.textColor,
//       required this.color})
//       : super(key: key);
//   @override
//   State<ButtonWidget> createState() => _ButtonWidgetState();
// }

// class _ButtonWidgetState extends State<ButtonWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         width: double.maxFinite,
//         height: MediaQuery.of(context).size.height / 14,
//         decoration: BoxDecoration(
//           // color: Color(0xFF202e59)
//           color: AppColors.mainColor,
//           borderRadius: BorderRadius.circular(40),
//         ),
//         child: const Center(
//           child: Text(
//             "Add Task",
//             style: TextStyle(
//               fontSize: 20,
//               color: Colors.white,
//             ),
//           ),
//         ));
//   }
// }
