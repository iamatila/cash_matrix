import 'package:cashmatrix/screens/create_account.dart';
import 'package:cashmatrix/screens/nav_screen.dart';
import 'package:cashmatrix/widget/button_widget.dart';
import 'package:cashmatrix/widget/textfiel_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../colors/app_colors.dart';
import '../widget/error_warning_ms.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    bool _dataValidation() {
      if (emailController.text.trim() == '') {
        Message.taskErrorOrWarning("Email", "The email field is empty");
        return false;
      } else if (passwordController.text.trim() == '') {
        Message.taskErrorOrWarning("Password", "The password field is empty");
        return false;
      } else if (emailController.text.length <= 10) {
        Message.taskErrorOrWarning(
            "Email", "Your email should be at least 10 characters");
        return false;
      } else if (passwordController.text.length <= 10) {
        Message.taskErrorOrWarning(
            "Password", "Your password should be at least 10 characters");
        return false;
      }
      return true;
    }

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
              height: 60.0,
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
              height: 50.0,
              // height: MediaQuery.of(context).size.height / 9,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Column(
                  children: [
                    const Text(
                      'Welcome',
                      style: TextStyle(
                          fontSize: 40.0,
                          color: AppColors.SECOND_MAIN_COLOR,
                          fontWeight: FontWeight.bold),
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
                    TextButton(
                      onPressed: () {
                        print('Hello');
                      },
                      child: const Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: AppColors.MAIN_COLOR,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    InkWell(
                      onTap: () {
                        // if (_dataValidation()) {
                        // Get.find<DataController>().postData(
                        //   nameController.text.trim(),
                        //   detailController.text.trim(),
                        // );
                        Get.to(
                          () => NavScreen(),
                          transition: Transition.circularReveal,
                        );
                        // }
                        // ;
                      },
                      child: const ButtonWidget(
                        backgroundcolor: AppColors.MAIN_COLOR,
                        text: 'Sign in My Account',
                        textColor: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(
                          () => CreateAccount(),
                          transition: Transition.circularReveal,
                        );
                      },
                      child: RichText(
                        text: const TextSpan(
                            text: 'Don\'t have an account? - ',
                            style: TextStyle(
                              color: AppColors.SECOND_MAIN_COLOR,
                              fontSize: 15.0,
                            ),
                            children: [
                              TextSpan(
                                text: 'Create Account',
                                style: TextStyle(
                                  color: AppColors.MAIN_COLOR,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ]),
                      ),
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
