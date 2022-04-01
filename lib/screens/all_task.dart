import 'package:flutter/material.dart';
import 'package:flutter_golang_yt/colors/app_colors.dart';
import 'package:flutter_golang_yt/screens/add_task.dart';
import 'package:flutter_golang_yt/screens/home_screen.dart';
import 'package:flutter_golang_yt/widgets/task_widget.dart';
import 'package:get/get.dart';

import '../widgets/button_widget.dart';

class AllTask extends StatelessWidget {
  const AllTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List myData = ["Try harder", "Try Smarter"];
    final leftEditIcon = Container(
      margin: const EdgeInsets.only(bottom: 10),
      color: const Color(0xFF2e3253).withOpacity(0.5),
      child: const Icon(
        Icons.edit,
        color: Colors.white,
      ),
      alignment: Alignment.centerLeft,
    );
    final rightDeleteIcon = Container(
      margin: const EdgeInsets.only(bottom: 10),
      color: Colors.redAccent,
      child: const Icon(
        Icons.delete,
        color: Colors.white,
      ),
      alignment: Alignment.centerRight,
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(left: 20, top: 40),
            child: InkWell(
              onTap: () {
                Get.back();
              },
              child: const Icon(
                Icons.arrow_back,
                color: AppColors.secondaryColor,
              ),
            ),
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height / 3.2,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                'assets/header1.jpg',
              ),
              fit: BoxFit.cover,
            )),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
//  -------------------Home Icon----------------------------------
                InkWell(
                  onTap: () {
                    Get.to(() => const HomeScreen());
                  },
                  child: const Icon(
                    Icons.home,
                    color: AppColors.secondaryColor,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
//  -------------------ADD TASK Icon----------------------------------
                Container(
                  child: InkWell(
                    onTap: () {
                      Get.to(() => const AddTask());
                    },
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.5),
                    color: Colors.black,
                  ),
                ),
//  -------------------Cal Icon----------------------------------
                Container(
                  padding: const EdgeInsets.only(left: 230),
                  child: const Icon(
                    Icons.calendar_month,
                    color: AppColors.secondaryColor,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text(
                    '2',
                    style: TextStyle(
                      fontSize: 20,
                      color: AppColors.secondaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
//  -------------------All Task Area----------------------------------
          Flexible(
            child: ListView.builder(
              itemCount: myData.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  background: leftEditIcon,
                  secondaryBackground: rightDeleteIcon,
                  onDismissed: (DismissDirection direction) {
                    // ignore: avoid_print
                    print('dismiss after');
                  },
                  confirmDismiss: (DismissDirection direction) async {
//  -----------------------------------------------This condition is use for Edit the TASK----------------------------------
                    if (direction == DismissDirection.startToEnd) {
                      showModalBottomSheet(
                          backgroundColor: Colors.transparent,
                          barrierColor: Colors.transparent,
                          context: context,
                          builder: (_) {
                            return Container(
                              decoration: BoxDecoration(
                                  color:
                                      const Color(0xFF2e3253).withOpacity(0.5),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  )),
                              height: 550,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
//  -----------------------------------------------------View TASK Button----------------------------------
                                    ButtonWidget(
                                        backgroundcolor: AppColors.mainColor,
                                        text: "View",
                                        textColor: Colors.white),
                                    SizedBox(
                                      height: 20,
                                    ),

//  ----------------------------------------Edit Task button----------------------------------
                                    ButtonWidget(
                                        backgroundcolor: AppColors.mainColor,
                                        text: "Edit",
                                        textColor: Colors.blue),
                                  ],
                                ),
                              ),
                            );
                          });

//  --------------------------------------This condition is use for Delete the TASK----------------------------------
                      return false;
                    } else {
                      return Future.delayed(const Duration(microseconds: 1),
                          () => direction == DismissDirection.endToStart);
                    }
                  },
                  key: ObjectKey(index),
                  child: Container(
                    margin: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      bottom: 10,
                    ),
                    child: TaskWidget(
                      text: myData[index],
                      color: Colors.blueGrey,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
