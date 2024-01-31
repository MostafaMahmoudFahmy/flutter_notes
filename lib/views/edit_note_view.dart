import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CustomAppBar(
              title: "Edit Note",
              icon: Icons.check,
            ),
            SizedBox(
              height: 50,
            ),
            CustomTextField(hintTxt: "Title"),
            SizedBox(
              height: 16,
            ),
            CustomTextField(hintTxt: "Content", maxline: 5),
          ],
        ),
      ),
    );
  }
}
