import 'package:flutter/material.dart';
import 'package:flutter_application_1/aboutme.dart';
import 'package:flutter_application_1/contact_me.dart';
import 'package:flutter_application_1/globals/app_assets.dart';

import 'package:flutter_application_1/globals/app_colors.dart';
import 'package:flutter_application_1/globals/app_text_styles.dart';

import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/my_portfolio.dart';
import 'package:flutter_application_1/my_services.dart';

//import 'package:flutter_application_1/main.dart';

class HomePage extends StatefulWidget {
  const HomePage([Key? key]) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
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
  // ignore: prefer_typing_uninitialized_variables
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
              const Row(),
              const Home(),
              const AboutMe(),
              const MyServices(),
              const MyPortfolio(),
              ContactMe(),
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
          style: AppTextStyles.navBarTextStyle(
              color: hover ? AppColors.nameColor : Colors.white),
        ));
  }
}
