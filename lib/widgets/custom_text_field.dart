import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final ValueSetter? onChanged;

  final ValueSetter? onSaved;

  final TextInputType? keyboardType;

  final int? maxLines;

  const CustomTextField({
    Key? key,
    this.onChanged,
    this.onSaved,
    this.keyboardType,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      onChanged: onChanged,
      onSaved: onSaved,
      maxLines: maxLines,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.transparent,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Color(0xFFcccccc),
            )),
      ),
    );
  }
}
