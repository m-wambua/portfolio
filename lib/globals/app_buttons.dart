import 'package:flutter/material.dart';
import 'package:flutter_application_1/globals/app_colors.dart';
import 'package:flutter_application_1/globals/app_text_styles.dart';

class AppButtons {
  static MaterialButton buildMaterialButton({
    required String buttonName,
    required VoidCallback onTap,
  }) {
    return MaterialButton(
        onPressed: onTap,
        color: AppColors.nameColor,
        splashColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none),
        hoverColor: Colors.cyan,
        elevation: 6,
        height: 46,
        minWidth: 130,
        focusElevation: 12,
        child: Text(
          buttonName,
          style: AppTextStyles.headerTextStyl(),
        ));
  }
}
