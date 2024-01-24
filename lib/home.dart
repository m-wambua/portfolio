import 'dart:io';
import 'dart:typed_data';

import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/globals/app_assets.dart';
import 'package:flutter_application_1/globals/app_buttons.dart';
import 'package:flutter_application_1/globals/app_colors.dart';
import 'package:flutter_application_1/globals/app_text_styles.dart';
import 'package:flutter_application_1/globals/widgets/profile_animation.dart';
import 'package:open_file/open_file.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:path_provider/path_provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    {
      return Container(
        height: size.height,
        color: AppColors.bgColor,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
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
                    InkWell(
                      onTap: () {
                        // Open GitHub Url
                        _launchURL('https://github.com/m-wambua');
                      },
                      onHover: (value) {
                        //Handle hover state
                      },
                      hoverColor: AppColors.nameColor,
                      splashColor: Colors.white,
                      child: CircleAvatar(
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
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    InkWell(
                      onTap: () {
                        _launchURL(
                            'https://www.linkedin.com/in/michael-wambua-594246223/');
                      },
                      onHover: (value) {},
                      hoverColor: AppColors.nameColor,
                      splashColor: Colors.white,
                      child: CircleAvatar(
                        maxRadius: 24,
                        backgroundColor: AppColors.socialsColor,
                        child: CircleAvatar(
                          maxRadius: 23,
                          backgroundColor: AppColors.bgColor,
                          child: Image.asset(
                            AppAsset.ln,
                            width: 30,
                            height: 30,
                            color: AppColors.bgColor,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                  ],
                )),
                const SizedBox(
                  height: 25,
                ),
                FadeInUp(
                    child: AppButtons.buildMaterialButton(
                        onTap: () {
                          _launchPDFOpen();
                        },
                        buttonName: 'Download CV'))
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
      );
    }
  }

  void _launchURL(String url) async {
    try {
      if (await canLaunchUrlString(url)) {
        await launchUrlString(url);
      } else {
        print('Could not launch $url');
      }
    } catch (e) {
      print('Error launching URL: $e');
      // Handle the exception or perform an alternative action
    }
  }

  void _launchPDF() async {
    final ByteData data = await rootBundle.load('assets//files/cv.pdf');
    final Uint8List bytes = data.buffer.asUint8List();

    try {
      final Directory tempDir = await getTemporaryDirectory();
      final String tempPath = tempDir.path + '/cv.pdf';
      final File tempFile = File(tempPath);
      await tempFile.writeAsBytes(bytes, flush: true);

      if (await canLaunchUrlString(tempPath)) {
        await launchUrlString(tempPath);
      } else {
        print('Could not launch $tempPath');
      }
    } catch (e) {
      print('Error launching PDF: $e');
    }
  }

  void _launchPDFOpen() async {
    final filePath = 'assets/files/cv.pdf';

    try {
      await OpenFile.open(filePath);
    } catch (e) {
      print('Error opening PDF: $e');
    }
  }
}
