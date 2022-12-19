import 'package:cashmatrix/screens/otpNumber.dart';
import 'package:cashmatrix/widget/button_widget.dart';
import 'package:cashmatrix/widget/textfiel_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../colors/app_colors.dart';
import '../widget/error_warning_ms.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController repeatPasswordController = TextEditingController();

    bool _dataValidation() {
      if (emailController.text.trim() == '') {
        Message.taskErrorOrWarning("Email", "The email field is empty");
        return false;
      } else if (passwordController.text.trim() == '') {
        Message.taskErrorOrWarning("Password", "The password field is empty");
        return false;
      } else if (repeatPasswordController.text.trim() == '') {
        Message.taskErrorOrWarning(
            "Repeat Password", "The repeat password field is empty");
        return false;
      } else if (emailController.text.length <= 6) {
        Message.taskErrorOrWarning(
            "Email", "Your email should be at least 6 characters");
        return false;
      } else if (passwordController.text.length <= 10) {
        Message.taskErrorOrWarning(
            "Password", "Your password should be at least 10 characters");
        return false;
        // } else if (repeatPasswordController != passwordController) {
        //   Message.taskErrorOrWarning(
        //       "Repeat Password", "Both passwords does not match, try again.");
        //   return false;
      }
      return true;
    }

    _loadRegistration() {
      Message.alertDialog('${emailController}');
    }

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
              padding: const EdgeInsets.only(
                left: 20.0,
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.arrow_back_ios_new_rounded),
                    color: AppColors.MAIN_COLOR,
                  ),
                  // SizedBox(
                  //   width: MediaQuery.of(context).size.width / 7,
                  // ),
                  const Padding(
                    padding: EdgeInsets.only(left: 110.0),
                    child: Text(
                      'Create Account',
                      style: TextStyle(
                          color: AppColors.SECOND_MAIN_COLOR,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(
            //   height: 5.0,
            //   // height: MediaQuery.of(context).size.height / 10,
            // ),
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
                  children: [
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Input your correct details',
                        style: TextStyle(
                          color: AppColors.SECOND_MAIN_COLOR,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextFieldWidget(
                      textController: emailController,
                      hintText: 'Email',
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextFieldWidget(
                      textController: passwordController,
                      hintText: 'Password',
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextFieldWidget(
                      textController: repeatPasswordController,
                      hintText: 'Repeat the Password',
                    ),
                    const SizedBox(
                      height: 100.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        // if (_dataValidation()) {
                        // Get.find<DataController>().postData(
                        //   nameController.text.trim(),
                        //   detailController.text.trim(),
                        // );
                        Get.to(
                          () => OtpNumberScreen(),
                          transition: Transition.circularReveal,
                        );
                        // }
                        ;
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
