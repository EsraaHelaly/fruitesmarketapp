import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruitesmarketapp/utils/constants.dart';

class CustomIndecator extends StatelessWidget {
  const CustomIndecator({
    Key? key,
    required this.dotsIndex,
  }) : super(key: key);
  final double? dotsIndex;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      decorator: DotsDecorator(
        activeColor: kPrimaryColor,
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: kPrimaryColor),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      dotsCount: 3,
      position: dotsIndex!,
    );
  }
}
