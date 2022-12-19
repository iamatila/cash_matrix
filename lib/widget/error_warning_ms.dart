import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../colors/app_colors.dart';

class Message {
  static void taskErrorOrWarning(String taskName, String taskErrorOrWarning) {
    Get.snackbar(
      taskName,
      taskErrorOrWarning,
      backgroundColor: AppColors.MAIN_COLOR,
      titleText: Text(
        taskName,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      messageText: Text(
        taskErrorOrWarning,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: AppColors.SECOND_MAIN_COLOR,
        ),
      ),
    );
  }

  static void alertDialog(String emailController) {
    // Get.dialog(widget)
    Get.defaultDialog(
        title: "Welcome to Flutter Dev'S",
        middleText:
            "${emailController} is a protruding flutter app development company with "
            "an extensive in-house team of 30+ seasoned professionals who know "
            "exactly what you need to strengthen your business across various dimensions",
        backgroundColor: Colors.teal,
        titleStyle: TextStyle(color: Colors.white),
        middleTextStyle: TextStyle(color: Colors.white),
        radius: 30);
  }
}
