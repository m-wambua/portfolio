import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/globals/app_buttons.dart';
import 'package:flutter_application_1/globals/app_colors.dart';
import 'package:flutter_application_1/globals/app_text_styles.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: AppColors.bgColor,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: size.width * 0.1),
      child: Column(children: [
        FadeInDown(
            child: RichText(
          text: TextSpan(
              text: 'Contact',
              style: AppTextStyles.AboutMeHeading(),
              children: [
                TextSpan(text: 'Me', style: AppTextStyles.AboutMeMe())
              ]),
        )),
        Row(
          children: [
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(15),
                color: Colors.transparent,
                elevation: 8,
                child: TextField(
                    decoration: buildInputDecoration(hintText: 'Full Name')),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(15),
                color: Colors.transparent,
                elevation: 8,
                child: TextField(
                    decoration: buildInputDecoration(hintText: 'Email')),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(15),
                color: Colors.transparent,
                elevation: 8,
                child: TextField(
                    decoration:
                        buildInputDecoration(hintText: 'Mobile Number')),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(15),
                color: Colors.transparent,
                elevation: 8,
                child: TextField(
                    decoration:
                        buildInputDecoration(hintText: 'Email Subject')),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          children: [
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(15),
                color: Colors.transparent,
                elevation: 8,
                child: TextField(
                    maxLines: 15,
                    decoration: buildInputDecoration(hintText: 'Your Message')),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
          ],
        ),
        const SizedBox(
          height: 60,
        ),
        AppButtons.buildMaterialButton(buttonName: 'Send Message', onTap: () {})
      ]),
    );
  }
}

InputDecoration buildInputDecoration({required String hintText}) {
  return InputDecoration(
    hintText: hintText,
    hintStyle: AppTextStyles.HintTextStyle(),
    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
    filled: true,
    focusColor: AppColors.bgColor2,
    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
  );
}
