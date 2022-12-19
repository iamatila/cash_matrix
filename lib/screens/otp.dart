import 'package:cashmatrix/screens/registration.dart';
import 'package:cashmatrix/widget/button_widget.dart';
import 'package:cashmatrix/widget/textfiel_widget.dart';
import 'package:cashmatrix/widget/textfield_code_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../colors/app_colors.dart';
import '../widget/error_warning_ms.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController oneController = TextEditingController();
    TextEditingController twoController = TextEditingController();
    TextEditingController threeController = TextEditingController();
    TextEditingController fourController = TextEditingController();

    DateTime date = DateTime(2022, 11, 12);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: double.maxFinite,
              height: 60.0,
              decoration: const BoxDecoration(
                color: AppColors.THIRD_MAIN_COLOR,
              ),
              // padding: const EdgeInsets.only(
              //   left: 20.0,
              // ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(Icons.arrow_back_ios_new_rounded),
                      color: AppColors.MAIN_COLOR,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 7,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 50.0),
                      child: Text(
                        'Validate',
                        style: TextStyle(
                            color: AppColors.SECOND_MAIN_COLOR,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
              // height: MediaQuery.of(context).size.height / 10,
            ),
            Container(
              child: const Image(
                image: AssetImage(
                  'assets/cashmatrix-logo.png',
                ),
                height: 200,
                width: 300,
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(
              height: 0.0,
              // height: MediaQuery.of(context).size.height / 9,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Please enter the code we sent to your phone',
                        style: TextStyle(
                          color: AppColors.SECOND_MAIN_COLOR,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextFieldCodeWidget(
                      oneController: oneController,
                      twoController: twoController,
                      threeController: threeController,
                      fourController: fourController,
                      textWidth: 50.0,
                    ),
                    const SizedBox(
                      height: 200.0,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(
                          () => RegistrationScreen(),
                          transition: Transition.circularReveal,
                        );
                      },
                      child: const ButtonWidget(
                        backgroundcolor: AppColors.MAIN_COLOR,
                        text: 'Continue',
                        textColor: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
