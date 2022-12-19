import 'package:cashmatrix/colors/app_colors.dart';
import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      leadingWidth: 100.0,
      backgroundColor: Colors.white,
      leading: Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: Row(
          children: [
            Icon(
              Icons.person_pin,
              color: AppColors.MAIN_COLOR,
            ),
            SizedBox(
              width: 5.0,
            ),
            Text(
              'Hi, Oluwaseun',
              style: TextStyle(
                color: AppColors.MAIN_COLOR,
                fontSize: 10.0,
              ),
            )
          ],
        ),
      ),
      // actions: [],
    );
  }
}
