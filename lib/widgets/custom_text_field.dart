import 'package:flutter/material.dart';

import '../const_file.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.hintTxt, this.maxline = 1});
  final String? hintTxt;
  final int maxline;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxline,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hintTxt,
        hintStyle: const TextStyle(color: kPrimaryColor),
        border: buildOutlineBorder(),
        enabledBorder: buildOutlineBorder(),
        focusedBorder: buildOutlineBorder(
          kPrimaryColor,
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}
