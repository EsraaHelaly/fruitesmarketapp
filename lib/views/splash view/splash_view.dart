import 'package:flutter/material.dart';
import 'package:fruitesmarketapp/utils/constants.dart';
import 'package:fruitesmarketapp/views/on%20boarding%20view/on_boarding_view.dart';
import 'package:get/get.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadeAnimation;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 700));
    fadeAnimation =
        Tween<double>(begin: .2, end: 1).animate(animationController!);
    animationController!.repeat(reverse: true);

    goToNextView();
  }

  void goToNextView() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.to(() => const OnBoardingView(), transition: Transition.fade);
      },
    );
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          // this text is the only  widget that will rebuild
          FadeTransition(
            opacity: fadeAnimation!,
            child: const Text(
              'Fruit Market',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 51,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
          // const Spacer(),
          Image.asset(
            'images/splash_view_image.png',
            fit: BoxFit.contain,
          )
        ],
      ),
    );
  }
}
