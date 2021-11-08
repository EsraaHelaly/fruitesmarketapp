import 'package:flutter/material.dart';
import 'package:fruitesmarketapp/utils/constants.dart';
import 'package:fruitesmarketapp/utils/size_config.dart';
import 'package:fruitesmarketapp/widgets/custom_spacer.dart';

import 'componants/login_social_item.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HeightSpacer(value: 10),
          SizedBox(
            height: SizeConfig.defaultSize! * 17,
            child: Image.asset('images/logo.png'),
          ),
          const HeightSpacer(value: 2.5),
          const Text(
            'Fruit Market',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 51,
              fontWeight: FontWeight.w700,
              color: kPrimaryColor,
            ),
          ),
          const Expanded(child: SizedBox()),
          const BuildLoginSocialItem(),
          const Expanded(
              child: SizedBox()), //ال وبعده  row  هياخد مسافتين قد بعض قبل
        ],
      ),
    );
  }
}
