import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/globals/app_assets.dart';
import 'package:flutter_application_1/globals/app_colors.dart';
import 'package:flutter_application_1/globals/app_text_styles.dart';

class MyPortfolio extends StatefulWidget {
  const MyPortfolio({Key? key}) : super(key: key);

  @override
  State<MyPortfolio> createState() => _MyPortfolioState();
}

class _MyPortfolioState extends State<MyPortfolio> {
  final onHoverEffect = Matrix4.identity()..scale(1.1);
  List images = <String>[
    AppAsset.work1,
    AppAsset.work2,
    AppAsset.work1,
    AppAsset.work2,
    AppAsset.work1,
    AppAsset.work2,
  ];

  var hoverIndex;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: AppColors.bgColor,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: size.width * 0.1),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FadeInRight(
            duration: const Duration(milliseconds: 1200),
            child: RichText(
              text: TextSpan(
                text: 'Latest',
                style: AppTextStyles.AboutMeHeading(),
                children: [
                  TextSpan(
                    text: ' Projects',
                    style: AppTextStyles.AboutMeMe(),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          GridView.builder(
            itemCount: images.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisExtent: 320,
              mainAxisSpacing: 25,
              crossAxisSpacing: 25,
            ),
            itemBuilder: (context, index) {
              var image = images[index];

              return FadeInUpBig(
                  child: InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    setState(() {
                      if (value) {
                        hoverIndex = index;
                      }
                    });
                  });
                },
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(
                        image: AssetImage(image),
                        fit: BoxFit.fill,
                      ),
                    ),
                    Visibility(
                        visible: index == hoverIndex,
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 1800),
                          transform: index == hoverIndex ? onHoverEffect : null,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            //color: AppColors.nameColor.withOpacity(0.2)
                            gradient: LinearGradient(
                                colors: [
                                  AppColors.nameColor.withOpacity(0.7),
                                  AppColors.nameColor.withOpacity(0.6),
                                  AppColors.nameColor.withOpacity(0.6),
                                  AppColors.nameColor.withOpacity(0.5),
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter),
                          ),
                          child: Column(children: [
                            Text(
                              'App Development',
                              style: AppTextStyles.PortfolioTextHeading(),
                            ),
                            Text(
                              'Welcome! I\'m Michael Wambua,\n'
                              'an Electrical Engineering grad passionate \n'
                              'about tech-driven innovation in energy. \n',
                              style: AppTextStyles.PortfolioTextNormal(),
                            ),
                            //Text('App Development',style: AppTextStyles.PortfolioText(),),
                          ]),
                        ))
                  ],
                ),
              ));
            },
          ),
        ],
      ),
    );
  }
}
