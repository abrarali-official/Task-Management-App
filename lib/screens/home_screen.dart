import 'package:flutter/material.dart';
import 'package:flutter_golang_yt/colors/app_colors.dart';
import 'package:flutter_golang_yt/widgets/button_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: const TextSpan(
                      text: "Hello",
                      style: TextStyle(
                        color: AppColors.mainColor,
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                    TextSpan(
                        text: "\nStart Your Beautiful Day",
                        style: TextStyle(
                          color: AppColors.smallTextColor,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ))
                  ])),
              SizedBox(
                height: MediaQuery.of(context).size.height / 2.5,
              ),
              const ButtonWidget(
                backgroundcolor: AppColors.mainColor,
                text: 'Add Task',
                textColor: Colors.white,
              ),
              const SizedBox(
                height: 20,
              ),
              const ButtonWidget(
                backgroundcolor: Colors.white,
                text: 'View All',
                textColor: AppColors.smallTextColor,
              ),
            ],
          ),
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/welcome.jpg"),
            fit: BoxFit.cover,
          )),
        ),
      ),
    );
  }
}
