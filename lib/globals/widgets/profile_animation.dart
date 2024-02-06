import 'package:flutter/material.dart';
import 'package:flutter_application_1/globals/app_assets.dart';
import 'package:flutter_application_1/globals/app_colors.dart';

class ProfileAnimator extends StatefulWidget {
  const ProfileAnimator({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _ProfileAnimationState createState() => _ProfileAnimationState();
}

class _ProfileAnimationState extends State<ProfileAnimator>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3))
          ..repeat(reverse: true);

    _animation = Tween(begin: Offset.zero, end: const Offset(0, 0.4))
        .animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
        position: _animation,

        child: CircleAvatar(
          backgroundColor: AppColors.bgColor,
          radius: 250,
          child: ClipOval(child:Image.asset(AppAsset.profile) ,)
          
          
        ));
  }
}
