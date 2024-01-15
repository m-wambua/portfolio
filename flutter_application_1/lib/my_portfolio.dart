import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/globals/app_colors.dart';
import 'package:flutter_application_1/globals/app_text_styles.dart';

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
        width: size.width,
        height: size.height,
        color: AppColors.bgColor,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            FadeInRight(
              duration: const Duration(milliseconds: 1200),
              child: RichText(
                text: TextSpan(
                    text: 'My',
                    style: AppTextStyles.AboutMeHeading(),
                    children: [
                      TextSpan(
                          text: ' Projects', style: AppTextStyles.AboutMeMe())
                    ]),
              ),
            )
          ],
        ));
  }
}
