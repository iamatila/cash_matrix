import 'package:cashmatrix/screens/welcome2.dart';
import 'package:cashmatrix/widget/button_widget.dart';
import 'package:cashmatrix/widget/textfiel_widget.dart';
import 'package:cashmatrix/widget/textfield_code_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../colors/app_colors.dart';
import '../widget/error_warning_ms.dart';

class WelcomeOneScreen extends StatelessWidget {
  const WelcomeOneScreen({super.key});

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
              height: MediaQuery.of(context).size.height / 10,
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
            // const SizedBox(
            //   height: 5.0,
            //   // height: MediaQuery.of(context).size.height / 9,
            // ),
            Container(
              child: const Image(
                image: AssetImage(
                  'assets/circle.png',
                ),
                height: 150,
                width: 150,
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Center(
              child: Text(
                'Account created\n  successfully',
                style: TextStyle(
                  color: AppColors.MAIN_COLOR,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Center(
              child: Text(
                'You are good to go',
                style: TextStyle(
                  color: AppColors.MAIN_COLOR,
                  fontSize: 20.0,
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            InkWell(
              onTap: () {
                Get.to(
                  () => WelcomeTwoScreen(),
                  transition: Transition.circularReveal,
                );
              },
              child: const Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: ButtonWidget(
                  backgroundcolor: AppColors.MAIN_COLOR,
                  text: 'Start using my account',
                  textColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
