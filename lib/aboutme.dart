import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/aboutmeinfull.dart';
import 'package:flutter_application_1/globals/app_assets.dart';
import 'package:flutter_application_1/globals/app_colors.dart';
import 'package:flutter_application_1/globals/app_text_styles.dart';
import 'package:flutter_application_1/globals/app_buttons.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      color: AppColors.bgColor2,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: AppColors.bgColor2,
            radius: 250,
            child: ClipOval(child: Image.asset(
            AppAsset.profile,
            height: 450,
            width: 400,
          ),),
          ),
          
          const SizedBox(
            width: 20,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              FadeInRight(
                  duration: const Duration(microseconds: 1000),
                  child: RichText(
                    text: TextSpan(
                        text: 'About ',
                        style: AppTextStyles.aboutMeHeading(),
                        children: [
                          TextSpan(text: 'Me', style: AppTextStyles.aboutMeMe())
                        ]),
                  )),
              const SizedBox(
                height: 14,
              ),
              FadeInLeft(
                duration: const Duration(milliseconds: 1600),
                child: Text(' Flutter Developer',
                    style: AppTextStyles.nameTextStyle()),
              ),
              const SizedBox(
                height: 15,
              ),
              FadeInLeft(
                duration: const Duration(milliseconds: 1800),
                child: Text(
                  'Welcome! I\'m Michael Wambua,\n'
                  'an Electrical Engineering grad passionate \n'
                  'about tech-driven innovation in energy. \n'
                  'As a Flutter Developer and Machine Learning Engineer ,\n'
                  'I blend technical expertise with hands-on experience.\n'
                  'Explore my portfolio for cutting-edge solutions and\n'
                  'sustainable practices. Let\'s innovate together!',
                  style: AppTextStyles.descriptionStyle(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              FadeInUp(
                  child: AppButtons.buildMaterialButton(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProfilePage()));
                      },
                      buttonName: 'About Me'))
            ],
          ))
        ],
      ),
    );
  }
}
