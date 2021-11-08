import 'package:flutter/material.dart';
import 'package:fruitesmarketapp/utils/size_config.dart';

class HeightSpacer extends StatelessWidget {
  const HeightSpacer({Key? key, required this.value}) : super(key: key);
  final dynamic value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize! * value,
    );
  }
}

class WidthSpacer extends StatelessWidget {
  const WidthSpacer({Key? key, required this.value}) : super(key: key);
  final dynamic value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defaultSize! * value,
    );
  }
}
