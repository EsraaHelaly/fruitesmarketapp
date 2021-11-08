import 'package:flutter/material.dart';
import 'package:fruitesmarketapp/utils/size_config.dart';
import 'package:fruitesmarketapp/views/Auth%20view/login_view.dart';
import 'package:fruitesmarketapp/views/on%20boarding%20view/componants/custom_page_view.dart';
import 'package:fruitesmarketapp/widgets/custom_button.dart';
import 'package:get/get.dart';

import 'componants/custom_indecator.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  PageController? pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController(
      initialPage: 0,
    )..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        children: [
          CustomPageView(
            pageController: pageController,
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: SizeConfig.defaultSize! * 18,
            child: CustomIndecator(
              dotsIndex: pageController!.hasClients ? pageController!.page : 0,
            ),
          ),
          Visibility(
            visible: pageController!.hasClients
                ? (pageController!.page == 2 ? false : true)
                : true,
            child: Positioned(
              top: SizeConfig.defaultSize! * 10,
              right: SizeConfig.defaultSize! * 3.2,
              child: const Text(
                'Skip',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: Color(0xff898989),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Visibility(
            child: Positioned(
              bottom: SizeConfig.defaultSize! * 10,
              left: SizeConfig.defaultSize! * 10,
              right: SizeConfig.defaultSize! * 10,
              child: CustomButton(
                onTap: () {
                  if (pageController!.page! < 2) {
                    pageController!.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn);
                  } else {
                    Get.offAll(
                      () => const LoginView(),
                      transition: Transition.rightToLeft,
                      duration: const Duration(milliseconds: 500),
                    );
                  }
                },
                text: pageController!.hasClients
                    ? (pageController!.page == 2 ? 'Get Started' : 'Next')
                    : "Next",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
