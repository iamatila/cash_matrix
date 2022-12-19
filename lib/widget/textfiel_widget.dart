import 'package:flutter/material.dart';

import '../colors/app_colors.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  final double? borderRadius;
  final int? lineNumber;
  final bool readOnly;

  const TextFieldWidget(
      {super.key,
      required this.textController,
      required this.hintText,
      this.borderRadius = 10.0,
      this.lineNumber = 1,
      this.readOnly = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: readOnly,
      maxLines: lineNumber,
      controller: textController,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.MAIN_COLOR.withOpacity(0.05),
        hintText: hintText,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius!),
          borderSide: const BorderSide(
            color: Colors.white,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius!),
          borderSide: const BorderSide(
            color: Colors.white,
            width: 1.0,
          ),
        ),
      ),
    );
  }
}
