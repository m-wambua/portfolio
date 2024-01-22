import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/aboutme.dart';
import 'package:flutter_application_1/contact_me.dart';
import 'package:flutter_application_1/globals/app_assets.dart';
import 'package:flutter_application_1/globals/app_buttons.dart';
import 'package:flutter_application_1/globals/app_colors.dart';
import 'package:flutter_application_1/globals/app_text_styles.dart';
import 'package:flutter_application_1/globals/widgets/profile_animation.dart';
import 'package:flutter_application_1/my_portfolio.dart';
import 'package:flutter_application_1/my_services.dart';
//import 'package:flutter_application_1/main.dart';

class HomePage extends StatefulWidget {
  const HomePage([Key? key]) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final onMenuHover = Matrix4.identity()..scale(1.0);
  final menuItems = <String>[
    'Home',
    'About',
    'Services',
    'Portfolio',
    'Contact',
  ];

  final socialButtons = <String>[AppAsset.linkedin, AppAsset.github];
  var menuIndex = 0;
  var socialBI;

  //Navigate to AboutMe page

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
                SizedBox(
                  height: 30,
                  child: ListView.separated(
                      itemCount: menuItems.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, child) =>
                          const SizedBox(width: 5),
                      itemBuilder: (context, index) {
                        return MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(100),
                            hoverColor: AppColors.nameColor,
                            onHover: (value) {
                              setState(() {
                                if (value) {
                                  menuIndex = index;
                                } else {
                                  menuIndex = 0;
                                }
                              });
                            },
                            child: buildNavBarAnimatedContainer(
                                index, menuIndex == index ? true : false),
                          ),
                        );
                      }),
                ),

                //Text('Portfolio'),
              ],
            )),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            top: size.height * 0.05,
            //left: size.height * 0.15,
            //right: size.height * 0.15,
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      FadeInDown(
                          duration: const Duration(milliseconds: 1000),
                          child: Text(
                            'Hello, It\'s me',
                            style: AppTextStyles.normalTextStyle(),
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      FadeInLeft(
                          duration: const Duration(milliseconds: 1200),
                          child: Text(
                            'Michael Wambua',
                            style: AppTextStyles.nameTextStyle(),
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      FadeInRight(
                          duration: const Duration(milliseconds: 1400),
                          child: Row(
                            children: [
                              Text(
                                'And I am a: ',
                                style: AppTextStyles.normalTextStyle(),
                              ),
                              AnimatedTextKit(
                                animatedTexts: [
                                  TyperAnimatedText('Python Developer',
                                      textStyle:
                                          AppTextStyles.attributeStyle()),
                                  TyperAnimatedText('Machine Learning Engineer',
                                      textStyle:
                                          AppTextStyles.attributeStyle()),
                                  TyperAnimatedText('Data Analyst',
                                      textStyle:
                                          AppTextStyles.attributeStyle()),
                                  TyperAnimatedText('C++ Developer',
                                      textStyle:
                                          AppTextStyles.attributeStyle()),
                                  TyperAnimatedText('Flutter Developer',
                                      textStyle:
                                          AppTextStyles.attributeStyle()),
                                  TyperAnimatedText('Freelancer',
                                      textStyle:
                                          AppTextStyles.attributeStyle()),
                                  TyperAnimatedText('Python Automator',
                                      textStyle:
                                          AppTextStyles.attributeStyle()),
                                  //TyperAnimatedText('')
                                ],
                                pause: const Duration(milliseconds: 1000),
                                displayFullTextOnTap: true,
                                stopPauseOnTap: true,
                              ),
                            ],
                          )),
                      const SizedBox(
                        height: 5,
                      ),
                      FadeInUp(
                          duration: const Duration(milliseconds: 1400),
                          child: Text(
                            'Welcome! I\'m Michael Wambua,\n'
                            'an Electrical Engineering grad passionate \n'
                            'about tech-driven innovation in energy. \n'
                            'As a Flutter Developer and Machine Learning Engineer ,\n'
                            'I blend technical expertise with hands-on experience.\n'
                            'Explore my portfolio for cutting-edge solutions and\n'
                            'sustainable practices. Let\'s innovate together!',
                            style: AppTextStyles.descriptionStyle(),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      FadeInUp(
                          child: Row(
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
                      )),
                      const SizedBox(
                        height: 25,
                      ),
                      FadeInUp(
                          child: AppButtons.buildMaterialButton(
                              onTap: () {}, buttonName: 'Download CV'))
                    ],
                  ),
                  const SizedBox(
                    width: 250,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(),
                      ProfileAnimator(),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 350,
              ),
              const AboutMe(),
              const MyServices(),
              const MyPortfolio(),
              const ContactMe()
            ],
          ),
        ));
  }

  AnimatedContainer buildNavBarAnimatedContainer(int index, bool hover) {
    return AnimatedContainer(
        alignment: Alignment.center,
        width: hover ? 80 : 75,
        duration: const Duration(milliseconds: 200),
        transform: hover ? onMenuHover : null,
        child: Text(
          menuItems[index],
          style: AppTextStyles.NavBarTextStyle(
              color: hover ? AppColors.nameColor : Colors.white),
        ));
  }
}
