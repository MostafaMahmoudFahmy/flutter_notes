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
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode? autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
              hintTxt: "Title",
              onSaved: (value) {
                title = value;
              }),
          const SizedBox(
            height: 12,
          ),
          CustomTextField(
              hintTxt: "Content",
              maxline: 5,
              onSaved: (value) {
                subtitle = value;
              }),
          const SizedBox(
            height: 80,
          ),
          CustomButton(
              color: kPrimaryColor,
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                } else {
                  autovalidateMode = AutovalidateMode.always;
                }
                setState(() {});
              }),
        ],
      ),
    );
  }
}
