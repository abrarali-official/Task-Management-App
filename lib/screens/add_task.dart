import 'package:flutter/material.dart';
import 'package:flutter_golang_yt/colors/app_colors.dart';

class AddTask extends StatelessWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage("assets/addtask1.jpg"))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(children: [
                const SizedBox(
                  height: 60,
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back,
                      color: AppColors.secondaryColor,
                    ))
              ]),
              Column(
                children: const [],
              )
            ],
          ),
        ),
      ),
    );
  }
}
