import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruitesmarketapp/views/Auth%20view/componants/complete_login_item.dart';
import 'package:fruitesmarketapp/widgets/custom_button.dart';
import 'package:fruitesmarketapp/widgets/custom_spacer.dart';

class CompleteLoginView extends StatelessWidget {
  const CompleteLoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: const [
            HeightSpacer(value: 10),
            CompleteLoginItem(
              text: 'Enter Your Name',
            ),
            HeightSpacer(value: 2),
            CompleteLoginItem(
              text: 'Enter Your Phone Number',
            ),
            HeightSpacer(value: 2),
            CompleteLoginItem(
              maxLines: 5,
              text: 'Add Address',
            ),
            HeightSpacer(value: 6),
            CustomButton(
              text: 'Login',
            )
          ],
        ),
      ),
    );
  }
}
