import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/globals/app_assets.dart';
import 'package:flutter_application_1/globals/app_buttons.dart';
import 'package:flutter_application_1/globals/app_colors.dart';
import 'package:flutter_application_1/globals/app_text_styles.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MyServices extends StatefulWidget {
  const MyServices({Key? key}) : super(key: key);
  @override
  State<MyServices> createState() => _MyServicesState();
}

class _MyServicesState extends State<MyServices> {
  bool isApp = false, isML = false, isData = false;
  //final onHoverActive = Matrix4.identity()..scale(0, -10, 0);
  //final onHoverRemove = Matrix4.identity()..scale(0, 0, 0);
  //final onHoverActive = Matrix4.identity()..scale(0, -10, 0);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: AppColors.bgColor,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
                          text: ' Services', style: AppTextStyles.AboutMeMe())
                    ]),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                    onTap: () {},
                    onHover: (value) {
                      setState(() {
                        isApp = value;
                      });
                    },
                    child: buildAnimatedContainer(
                      title: 'App Development',
                      asset: AppAsset.code,
                      hover: isApp,
                    )),
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
                        title: 'Machine Learning',
                        asset: AppAsset.code,
                        hover: isML)),
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
                      title: 'Data Analysis',
                      asset: AppAsset.code,
                      hover: isData),
                )
              ],
            )
          ]),
    );
  }

  AnimatedContainer buildAnimatedContainer(
      {required String title, required String asset, required bool hover}) {
    return AnimatedContainer(
      duration: const Duration(
        milliseconds: 600,
      ),
      width: hover ? 450 : 390,
      height: hover ? 600 : 620,

      //height: 400,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      decoration: BoxDecoration(
          color: AppColors.bgColor2,
          border:
              hover ? Border.all(color: AppColors.nameColor, width: 4) : null,
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(
                color: Colors.black54,
                spreadRadius: 4.0,
                blurRadius: 4.5,
                offset: Offset(3.0, 4.5))
          ]),

      child: Column(children: [
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
          'Welcome! I\'m Michael Wambua,\n'
          'an Electrical Engineering grad passionate \n'
          'about tech-driven innovation in energy. \n'
          'As a Flutter Developer and Machine Learning Engineer ,\n'
          'I blend technical expertise with hands-on experience.\n'
          'Explore my portfolio for cutting-edge solutions and\n'
          'sustainable practices. Let\'s innovate together!',
          style: AppTextStyles.descriptionStyle(),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 15,
        ),
        AppButtons.buildMaterialButton(buttonName: 'Read More', onTap: () {})
      ]),
    );
  }
}
