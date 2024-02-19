import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/globals/app_assets.dart';
import 'package:flutter_application_1/globals/app_buttons.dart';
import 'package:flutter_application_1/globals/app_colors.dart';
import 'package:flutter_application_1/globals/app_text_styles.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MyServices extends StatefulWidget {
  const MyServices({Key? key}) : super(key: key);
  @override
  State<MyServices> createState() => _MyServicesState();
}

class _MyServicesState extends State<MyServices> {
  bool isApp = false, isML = false, isData = false;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        width: size
            .width, // This will make the container take the entire screen width
        color: AppColors.bgColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            FadeInRight(
              duration: const Duration(milliseconds: 1200),
              child: RichText(
                text: TextSpan(
                  text: 'My',
                  style: AppTextStyles.aboutMeHeading(),
                  children: [
                    TextSpan(
                      text: ' Services',
                      style: AppTextStyles.aboutMeMe(),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      _launchURL('https://gpds-afafa.web.app/');
                    },
                    onHover: (value) {
                      setState(() {
                        isApp = value;
                      });
                    },
                    child: buildAnimatedContainer(
                      title: 'Python Proficiency and Data Analysis',
                      bodyText:
                          'Advanced skills in Python programming language,\n'
                          'specializing in data analysis, manipulation, and visualization.\n'
                          'Applied Python for automation processes, including PDF data extraction,\n'
                          'demonstrating the ability to streamline workflows and improve data management\n'
                          'practices. Utilized Python for scripting and algorithm development \n'
                          'in data analysis, modeling, and other technical aspects,\n'
                          'contributing to the successful execution of projects.',
                      asset: AppAsset.code,
                      hover: isApp,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    onTap: () {},
                    onHover: (value) {
                      setState(() {
                        isML = value;
                      });
                    },
                    child: buildAnimatedContainer(
                      title: 'Machine Learning Proficiency',
                      bodyText:
                          'Adept at leveraging machine learning techniques to derive \n'
                          'actionable insights from data. Applied machine learning libraries\n'
                          'in Python to develop predictive models, contributing to proactive\n'
                          'energy management strategies. Developed and executed projects showcasing\n'
                          'machine learning proficiency, including the optimization of bandwidth allocation\n'
                          'in telecommunication networks using the Whale Optimization Algorithm and\n'
                          'the automation of machine learning tasks through a comprehensive AutoML project.',
                      asset: AppAsset.code,
                      hover: isML,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    onTap: () {},
                    onHover: (value) {
                      setState(() {
                        isData = value;
                      });
                    },
                    child: buildAnimatedContainer(
                      title: 'Cloud Engineering and Certifications',
                      bodyText:
                          'Google Cloud Certified Associate Cloud Engineer with expertise \n'
                          'in Google Cloud Platform for cloud infrastructure management, deployment,\n'
                          'and optimization. AWS Machine Learning Foundations Certification,\n'
                          'showcasing foundational principles of machine learning on the\n'
                          'Amazon Web Services (AWS) platform. Committed to staying abreast of \n'
                          'cutting-edge technologies and leveraging cloud solutions for efficient \n'
                          'data management and project execution in the field of energy and electrical engineering.',
                      asset: AppAsset.code,
                      hover: isData,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  //  const SizedBox(

                  InkWell(
                    onTap: () {},
                    onHover: (value) {
                      setState(() {
                        isData = value;
                      });
                    },
                    child: buildAnimatedContainer(
                        title: 'Technical Audits and Energy Efficiency',
                        bodyText:
                            'Proficient in conducting comprehensive technical audits\n'
                            'of electrical distribution systems, identifying inefficiencies, safety concerns,\n'
                            'and compliance issues. Enhanced expertise in data collection through \n'
                            'extensive fieldwork, contributing to the accuracy and depth of data analysis.\n'
                            'Leveraged data gathered from technical audits to perform in-depth energy \n'
                            'consumption analysis, generating insightful recommendations for optimizing\n'
                            'energy management strategies and promoting cost-effectiveness.',
                        asset: AppAsset.code,
                        hover: isData),
                  ) //Add more InkWell widgets for additional services
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildAnimatedContainer({
    required String title,
    required String asset,
    required bool hover,
    required String bodyText,
  }) {
    return AnimatedContainer(
      duration: const Duration(
        milliseconds: 600,
      ),
      width: hover ? 650 : 590,
      height: hover ? 700 : 720,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      decoration: BoxDecoration(
        color: AppColors.bgColor2,
        border: hover ? Border.all(color: AppColors.nameColor, width: 4) : null,
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            spreadRadius: 4.0,
            blurRadius: 4.5,
            offset: Offset(3.0, 4.5),
          )
        ],
      ),
      child: Column(
        children: [
          Image.asset(
            AppAsset.code,
            width: 50,
            height: 50,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: AppTextStyles.nameTextStyle(),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            bodyText,
            style: AppTextStyles.descriptionStyle(),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 15,
          ),
          AppButtons.buildMaterialButton(
            buttonName: 'Read More',
            onTap: () {
              //_launchURL('https://gpds-afafa.web.app/');
            },
          ),
        ],
      ),
    );
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
}
