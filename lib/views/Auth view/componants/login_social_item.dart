import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruitesmarketapp/widgets/custom_button.dart';
import 'package:get/get.dart';

import '../complete_login_view.dart';

class BuildLoginSocialItem extends StatelessWidget {
  const BuildLoginSocialItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: CustomButtonWithIcon(
              onTap: () {},
              text: 'Log In with',
              iconData: FontAwesomeIcons.googlePlusG,
              color: const Color(0Xffdb3236),
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: CustomButtonWithIcon(
              onTap: () {
                Get.to(() => const CompleteLoginView(),
                    transition: Transition.fade);
              },
              text: 'Log In with',
              iconData: FontAwesomeIcons.facebookF,
              color: const Color(0Xff4267B2),
            ),
          ),
        ),
      ],
    );
  }
}
