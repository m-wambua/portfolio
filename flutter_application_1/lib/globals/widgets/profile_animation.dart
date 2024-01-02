import 'package:flutter/material.dart';
import 'package:flutter_application_1/globals/app_assets.dart';

class ProfileAnimator extends StatefulWidget {
  const ProfileAnimator({Key? key}) : super(key: key);
  @override
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
        AnimationController(vsync: this, duration: Duration(seconds: 3))
          ..repeat(reverse: true);

    _animation = Tween(begin: Offset.zero, end: const Offset(0, 0.4))
        .animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
        position: _animation,
        child: Image.asset(
          AppAsset.github,
          width: 300,
          height: 330,
        ));
  }
}
