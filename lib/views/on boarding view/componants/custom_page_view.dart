import 'package:flutter/material.dart';
import 'package:fruitesmarketapp/views/on%20boarding%20view/componants/page_view_item.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({Key? key, required this.pageController})
      : super(key: key);
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
        PageViewItem(
          image: 'images/onboarding1.png',
          title: 'E Shopping',
          subtitle: "Explore  top organic fruits & grab them",
        ),
        PageViewItem(
          image: 'images/onboarding2.png',
          title: 'Delivery on the way',
          subtitle: "Get your order by speed delivery",
        ),
        PageViewItem(
          image: 'images/onboarding3.png',
          title: 'Delivery Arrived',
          subtitle: "Order is arrived at your Place",
        ),
      ],
    );
  }
}
