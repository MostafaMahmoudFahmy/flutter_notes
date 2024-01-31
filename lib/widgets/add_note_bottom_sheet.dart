import 'package:flutter/material.dart';
import 'package:notes_app/const_file.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(hintTxt: "Title"),
            SizedBox(
              height: 12,
            ),
            CustomTextField(hintTxt: "Content", maxline: 5),
            SizedBox(
              height: 80,
            ),
            CustomButton(color: kPrimaryColor),
          ],
        ),
      ),
    );
  }
}
