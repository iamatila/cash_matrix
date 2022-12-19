import 'package:flutter/material.dart';

import '../colors/app_colors.dart';

class TextFieldCodeWidget extends StatelessWidget {
  final TextEditingController oneController;
  final TextEditingController twoController;
  final TextEditingController threeController;
  final TextEditingController fourController;
  // final String hintText;
  // final double? borderRadius;
  // final int? lineNumber;
  // final bool readOnly;
  final double? textWidth;

  const TextFieldCodeWidget(
      {super.key,
      required this.oneController,
      required this.twoController,
      required this.threeController,
      required this.fourController,
      required this.textWidth});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: textWidth,
          child: TextField(
            maxLines: 1,
            // maxLength: 1,
            controller: oneController,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[250],
              // hintText: hintText,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                  width: 1.0,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                  width: 1.0,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        SizedBox(
          width: textWidth,
          child: TextField(
            maxLines: 1,
            // maxLength: 1,
            controller: twoController,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[250],
              // hintText: hintText,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                  width: 1.0,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                  width: 1.0,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        SizedBox(
          width: textWidth,
          child: TextField(
            maxLines: 1,
            // maxLength: 1,
            controller: threeController,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[250],
              // hintText: hintText,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                  width: 1.0,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                  width: 1.0,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        SizedBox(
          width: textWidth,
          child: TextField(
            maxLines: 1,
            // maxLength: 1,
            controller: fourController,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[250],
              // hintText: hintText,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                  width: 1.0,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                  width: 2.0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
