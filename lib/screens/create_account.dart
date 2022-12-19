import 'package:cashmatrix/screens/bank_account.dart';
import 'package:cashmatrix/screens/bvn.dart';
import 'package:cashmatrix/widget/button_2_widget.dart';
import 'package:cashmatrix/widget/button_widget.dart';
import 'package:cashmatrix/widget/textfiel_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../colors/app_colors.dart';
import '../widget/error_warning_ms.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  _loadRegistration() {
    BankAccountScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 60.0,
              // height: MediaQuery.of(context).size.height / 10,
            ),
            Container(
              child: const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Image(
                    image: AssetImage(
                      'assets/cashmatrix-logo.png',
                    ),
                    height: 200,
                    width: 250,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50.0,
              // height: MediaQuery.of(context).size.height / 9,
            ),
            Container(
              child: Column(
                children: [
                  Center(
                    child: Text(
                      'Create Account',
                      style: TextStyle(
                        fontSize: 30.0,
                        color: AppColors.SECOND_MAIN_COLOR,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Easy creation of account with:',
                        style: TextStyle(
                          color: AppColors.SECOND_MAIN_COLOR,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(
                        () => const BankAccountScreen(),
                        transition: Transition.circularReveal,
                      );
                    },
                    child: const Button2Widget(
                      backgroundcolor: AppColors.THIRD_MAIN_COLOR,
                      textColor: AppColors.SECOND_MAIN_COLOR,
                      textColor2: Colors.grey,
                      imageIcon: 'assets/BankAccountIcon.png',
                      textBig: 'Bank account',
                      textSmall:
                          'Use your existing account from another \nBank to sign up',
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(
                        () => BVNScreen(),
                        transition: Transition.circularReveal,
                      );
                    },
                    child: const Button2Widget(
                      backgroundcolor: AppColors.THIRD_MAIN_COLOR,
                      textColor: AppColors.SECOND_MAIN_COLOR,
                      imageIcon: 'assets/checkIcon.png',
                      textBig: 'BVN',
                      textSmall:
                          'Use your existing account from another Bank \nto sign up',
                      textColor2: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
