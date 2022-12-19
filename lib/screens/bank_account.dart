import 'package:cashmatrix/screens/phone_account.dart';
import 'package:cashmatrix/widget/button_widget.dart';
import 'package:cashmatrix/widget/textfiel_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../colors/app_colors.dart';
import '../widget/error_warning_ms.dart';

class BankAccountScreen extends StatelessWidget {
  const BankAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController accountNumberController = TextEditingController();
    TextEditingController bankNameController = TextEditingController();

    bool _dataValidation() {
      if (accountNumberController.text.trim() == '') {
        Message.taskErrorOrWarning(
            "Email", "The account number field is empty");
        return false;
      } else if (bankNameController.text.trim() == '') {
        Message.taskErrorOrWarning("Password", "The bank name field is empty");
        return false;
      } else if (accountNumberController.text.length <= 6) {
        Message.taskErrorOrWarning(
            "Email", "Your account number should be at least 6 characters");
        return false;
      } else if (bankNameController.text.length <= 5) {
        Message.taskErrorOrWarning(
            "Password", "Your bank name should be at least 5 characters");
        return false;
      }
      return true;
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
                  TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: const Text(
                      'Cancel',
                      style: TextStyle(
                        color: AppColors.MAIN_COLOR,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 7,
                  ),
                  const Center(
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
                        'Please enter your bank details',
                        style: TextStyle(
                          color: AppColors.SECOND_MAIN_COLOR,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextFieldWidget(
                      textController: accountNumberController,
                      hintText: 'Account number',
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextFieldWidget(
                      textController: bankNameController,
                      hintText: 'Bank name',
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Please enter your date of birth',
                        style: TextStyle(
                          color: AppColors.SECOND_MAIN_COLOR,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextButton(
                      onPressed: () async {
                        DateTime? newDate = await showDatePicker(
                          context: context,
                          initialDate: date,
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2100),
                        );
                      },
                      child: const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'DD/MM/YYYY',
                          style: TextStyle(
                              fontSize: 20, color: AppColors.SECOND_MAIN_COLOR),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(
                          () => PhoneAccountScreen(),
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
