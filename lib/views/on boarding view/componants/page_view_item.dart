import 'package:flutter/material.dart';
import 'package:fruitesmarketapp/utils/size_config.dart';
import 'package:fruitesmarketapp/widgets/custom_spacer.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.image})
      : super(key: key);
  final String? title;
  final String? subtitle;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: SizeConfig.defaultSize! * 20,
          width: SizeConfig.defaultSize! * 30,
          child: Image.asset(image!),
        ),
        const HeightSpacer(value: 5),
        Text(
          title!,
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            color: Color(0xff2f2e41),
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.left,
        ),
        const HeightSpacer(value: 2.5),
        Text(
          subtitle!,
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 15,
            color: Color(0xff78787c),
          ),
          textAlign: TextAlign.left,
        )
      ],
    );
  }
}
