import 'package:cashmatrix/colors/app_colors.dart';
import 'package:cashmatrix/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          Get.to(
            () => LoginScreen(),
            transition: Transition.circularReveal,
          );
        },
        child: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                // height: 250.0,
                height: MediaQuery.of(context).size.height / 3,
              ),
              Container(
                child: const Image(
                  image: AssetImage(
                    'assets/Cashmatrix-Instagram-Post-Square.png',
                  ),
                  height: 200,
                  width: 200,
                  fit: BoxFit.fitWidth,
                ),
              ),
              SizedBox(
                // height: 250.0,
                height: MediaQuery.of(context).size.height / 4,
              ),
              const Text(
                'Powered by Assetmatrix MFB',
                style: TextStyle(
                  color: AppColors.MAIN_COLOR,
                  fontWeight: FontWeight.w900,
                  fontSize: 15.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
