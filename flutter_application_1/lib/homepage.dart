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
import 'package:flutter_application_1/home.dart';
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
              Row(),
              const Home(),
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
/*

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/aboutme.dart';
import 'package:flutter_application_1/contact_me.dart';
import 'package:flutter_application_1/globals/app_assets.dart';
import 'package:flutter_application_1/globals/app_colors.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/my_portfolio.dart';
import 'package:flutter_application_1/my_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onItemHover(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  void _navigateToPage(int index) {
    _scrollController.animateTo(
      index * MediaQuery.of(context).size.width,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        toolbarHeight: 60,
        elevation: 0,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Portfolio',
                style: TextStyle(fontSize: 18, color: Colors.white)),
            const Spacer(),
            for (int i = 1; i <= 4; i++)
              InkWell(
                onTap: () => _navigateToPage(i),
                onHover: (value) => _onItemHover(value ? i : 0),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  color: selectedIndex == i
                      ? AppColors.bgColor
                      : Colors.transparent,
        Row(
          children: [
            for (int i = 0; i <= 4; i++)
              SizedBox(
                width: size.width,
                child: getPageWidget(i),
              ),
          ],
        ),           child: Text(
                    getMenuTitle(i),
                    style: TextStyle(
                      fontSize: 18,
                      color: selectedIndex == i
                          ? AppColors.nameColor
                          : Colors.white,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Row(
              children: [
                for (int i = 0; i <= 5; i++)
                  SizedBox(
                    width: size.width,
                    child: getPageWidget(i),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String getMenuTitle(int index) {
    switch (index) {
      case 1:
        return 'Home';
      case 2:
        return 'About';
      case 3:
        return 'Services';
      case 4:
        return 'Portfolio';
      case 5:
        return 'Contact';
      default:
        return 'Home';
    }
  }

  Widget getPageWidget(int index) {
    switch (index) {
      case 1:
        return Home();
      case 2:
        return AboutMe();
      case 3:
        return MyServices();
      case 4:
        return MyPortfolio();
      case 5:
        return ContactMe();
      default:
        return Home(); // Placeholder for the Home page
    }
  }
}
*/
