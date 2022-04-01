import 'package:flutter/material.dart';
import 'package:flutter_golang_yt/colors/app_colors.dart';
import 'package:flutter_golang_yt/widgets/button_widget.dart';
import 'package:flutter_golang_yt/widgets/text_field_widget.dart';
import 'package:get/get.dart';

class AddTask extends StatelessWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController detailController = TextEditingController();
    return Scaffold(
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(children: [
              const SizedBox(
                height: 40,
              ),
              IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: AppColors.secondaryColor,
                  ))
            ]),
            Column(
              children: [
                TextFieldWidget(
                    textController: nameController,
                    hintText: 'Task name',
                    borderRadius: 30),
                const SizedBox(height: 20),
                TextFieldWidget(
                  textController: detailController,
                  hintText: 'Task Detail',
                  borderRadius: 15,
                  maxlines: 3,
                ),
                const SizedBox(
                  height: 20,
                ),

//----------------------------------ADD TASK BUTTON-------------------------------------------------------------
                const ButtonWidget(
                    text: 'Add ',
                    textColor: Colors.white,
                    backgroundcolor: AppColors.mainColor)
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 6,
            ),
          ],
        ),
      ),
    );
  }
}
