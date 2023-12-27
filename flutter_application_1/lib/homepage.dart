import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/globals/app_assets.dart';
import 'package:flutter_application_1/globals/app_colors.dart';
import 'package:flutter_application_1/globals/app_text_styles.dart';
//import 'package:flutter_application_1/main.dart';

class HomePage extends StatelessWidget {
  const HomePage([Key? key]) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: AppColors.bgColor,
        appBar: AppBar(
            backgroundColor: AppColors.bgColor,
            toolbarHeight: 60,
            elevation: 0,
            bottomOpacity: 100,
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Portfolio',
                  style: AppTextStyles.headerTextStyl(),
                ),
                const Spacer(),
                Text(
                  'Home',
                  style: AppTextStyles.headerTextStyl(),
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  'About',
                  style: AppTextStyles.headerTextStyl(),
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  'Services',
                  style: AppTextStyles.headerTextStyl(),
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  'Portfolio',
                  style: AppTextStyles.headerTextStyl(),
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  'Contact',
                  style: AppTextStyles.headerTextStyl(),
                ),
                //Text('Portfolio'),
              ],
            )),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
              top: size.height * 0.1,
              left: size.height * 0.15,
              right: size.height * 0.10),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello, It\'s me',
                        style: AppTextStyles.normalTextStyle(),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Michael Wambua',
                        style: AppTextStyles.nameTextStyle(),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'And I am a: ',
                            style: AppTextStyles.normalTextStyle(),
                          ),
                          AnimatedTextKit(
                            animatedTexts: [
                              TyperAnimatedText('Python Developer',
                                  textStyle: AppTextStyles.attributeStyle()),
                              TyperAnimatedText('Machine Learning Engineer',
                                  textStyle: AppTextStyles.attributeStyle()),
                              TyperAnimatedText('Data Analyst',
                                  textStyle: AppTextStyles.attributeStyle()),
                              TyperAnimatedText('C++ Developer',
                                  textStyle: AppTextStyles.attributeStyle()),
                              TyperAnimatedText('Flutter Developer',
                                  textStyle: AppTextStyles.attributeStyle()),
                              TyperAnimatedText('Freelancer',
                                  textStyle: AppTextStyles.attributeStyle()),
                              TyperAnimatedText('Python Automator',
                                  textStyle: AppTextStyles.attributeStyle()),
                              //TyperAnimatedText('')
                            ],
                            pause: const Duration(milliseconds: 1000),
                            displayFullTextOnTap: true,
                            stopPauseOnTap: true,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Welcome! I\'m Michael Wambua,\n'
                        'an Electrical Engineering grad passionate \n'
                        'about tech-driven innovation in energy. \n'
                        'As a Flutter Developer and Machine Learning Engineer\n,'
                        'I blend technical expertise with hands-on experience.\n'
                        'Explore my portfolio for cutting-edge solutions and\n'
                        'sustainable practices. Let\'s innovate together!',
                        style: AppTextStyles.descriptionStyle(),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            maxRadius: 24,
                            backgroundColor: AppColors.socialsColor,
                            child: CircleAvatar(
                              maxRadius: 23,
                              backgroundColor: AppColors.bgColor,
                              child: Image.asset(
                                AppAsset.github,
                                width: 40,
                                height: 40,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            maxRadius: 24,
                            backgroundColor: AppColors.socialsColor,
                            child: CircleAvatar(
                              maxRadius: 23,
                              backgroundColor: AppColors.bgColor,
                              child: Image.asset(
                                AppAsset.linkedin,
                                width: 40,
                                height: 40,
                                color: AppColors.bgColor,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          CircleAvatar(
                            maxRadius: 24,
                            backgroundColor: AppColors.socialsColor,
                            child: CircleAvatar(
                              maxRadius: 23,
                              backgroundColor: AppColors.bgColor,
                              child: Image.asset(AppAsset.github,
                                  width: 40, height: 40),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      MaterialButton(
                        color: AppColors.socialsColor,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 8),
                        shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                        //height: 45,
                        minWidth: 140,
                        hoverColor: AppColors.bgColor,
                        splashColor: AppColors.nameColor,
                        onPressed: () {},
                        child: Text(
                          'Download CV',
                          style: AppTextStyles.downloadButton(),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}
