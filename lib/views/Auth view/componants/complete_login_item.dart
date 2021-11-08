import 'package:flutter/cupertino.dart';
import 'package:fruitesmarketapp/widgets/custom_spacer.dart';
import 'package:fruitesmarketapp/widgets/custom_text_field.dart';

class CompleteLoginItem extends StatelessWidget {
  final int? maxLines;

  const CompleteLoginItem({Key? key, required this.text, this.maxLines = 1})
      : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16,
            color: Color(0xff0c0b0b),
            fontWeight: FontWeight.w600,
            height: 1.5625,
          ),
          textHeightBehavior:
              const TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.center,
        ),
        const HeightSpacer(value: 2),
        CustomTextField(
          maxLines: maxLines!,
        ),
      ],
    );
  }
}
