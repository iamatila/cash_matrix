import 'package:cashmatrix/screens/HomeScreen.dart';
import 'package:cashmatrix/widget/button_widget.dart';
import 'package:cashmatrix/widget/textfiel_widget.dart';
import 'package:cashmatrix/widget/textfield_code_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../colors/app_colors.dart';
import '../widget/error_warning_ms.dart';

class WelcomeTwoScreen extends StatelessWidget {
  const WelcomeTwoScreen({super.key});

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
            // SizedBox(
            //   height: 20.0,
            // ),

            SizedBox(
              // height: 5.0,
              height: MediaQuery.of(context).size.height / 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Container(
                child: const Align(
                  alignment: Alignment.topLeft,
                  child: Image(
                    image: AssetImage(
                      'assets/cashmatrix-logo.png',
                    ),
                    height: 120,
                    width: 170,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            // const SizedBox(
            //   height: 5.0,
            //   // height: MediaQuery.of(context).size.height / 9,
            // ),
            Container(
              child: const Image(
                image: AssetImage(
                  'assets/FingerID.png',
                ),
                height: 300,
                width: 300,
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Center(
                child: Text(
                  'Do you want to log into your account ',
                  style: TextStyle(
                    color: AppColors.SECOND_MAIN_COLOR,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Center(
                child: Text(
                  'with Touch ID while signing in?',
                  style: TextStyle(
                    color: AppColors.SECOND_MAIN_COLOR,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            InkWell(
              onTap: () {
                Get.to(
                  () => HomeScreen(),
                  transition: Transition.circularReveal,
                );
              },
              child: const Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: ButtonWidget(
                  backgroundcolor: AppColors.MAIN_COLOR,
                  text: 'Yes, use Touch ID',
                  textColor: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            InkWell(
              onTap: () {
                Get.back();
              },
              child: const Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: ButtonWidget(
                  backgroundcolor: Colors.white,
                  text: 'No, thanks',
                  textColor: AppColors.MAIN_COLOR,
                ),
              ),
            ),
            SizedBox(
              // child: Expanded(child: Container()),
              height: 50.0,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Terms and Condition',
                  style: TextStyle(
                    color: AppColors.SECOND_MAIN_COLOR,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
