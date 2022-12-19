import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Button2Widget extends StatelessWidget {
  final Color backgroundcolor;
  final String textBig;
  final String textSmall;
  final Color textColor;
  final Color textColor2;
  final String imageIcon;
  // final Function pageS;

  const Button2Widget({
    super.key,
    required this.backgroundcolor,
    required this.textColor,
    required this.imageIcon,
    required this.textBig,
    required this.textSmall,
    required this.textColor2,
    // required this.pageS,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      // height: MediaQuery.of(context).size.height / 14,
      height: 100.0,
      decoration: BoxDecoration(
        color: backgroundcolor,
        // borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Row(
          children: [
            // const SizedBox(
            //   width: 25.0,
            // ),
            Image.asset(
              imageIcon,
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              width: 12.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 18.0,
                ),
                Text(
                  textBig,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: textColor,
                  ),
                ),
                Text(
                  textSmall,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: textColor2,
                  ),
                ),
              ],
            ),
            Expanded(child: Container()),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.purple[200],
            ),
          ],
        ),
      ),
    );
  }
}
