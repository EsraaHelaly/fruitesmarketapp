import 'package:flutter/material.dart';
import 'package:fruitesmarketapp/utils/constants.dart';
import 'package:fruitesmarketapp/utils/size_config.dart';
import 'package:fruitesmarketapp/widgets/custom_spacer.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onTap;

  const CustomButton({Key? key, this.text, this.onTap}) : super(key: key);
  final String? text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55,
        width: SizeConfig.screenWidth, //عشان ياخد padding
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text!,
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xffffffff),
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}

class CustomButtonWithIcon extends StatelessWidget {
  final VoidCallback? onTap;

  final IconData? iconData;
  final String? text;

  final Color? color;

  const CustomButtonWithIcon({
    Key? key,
    this.text,
    this.onTap,
    this.color,
    this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55,
        width: SizeConfig.screenWidth, //عشان ياخد padding
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: const Color(0xff707070),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: color,
            ),
            const WidthSpacer(value: 2),
            Text(
              text!,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}
