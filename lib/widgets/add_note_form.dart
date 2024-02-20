import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_nate_cubit/add_notes_cubit.dart';
import 'package:notes_app/cubits/add_nate_cubit/add_notes_state.dart';
import 'package:notes_app/model/note_model.dart';

import '../const_file.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';
import 'package:intl/intl.dart';

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
          const SizedBox(
            height: 16,
          ),
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
          BlocBuilder<AddNotesCubit, AddNotesState>(
            builder: (context, state) => CustomButton(
              isloading: state is AddNotesLoading ? true : false,
              color: kPrimaryColor,
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  var currentDate = DateTime.now();
                  var formmatedDate =
                      DateFormat('dd-mm-yyyy').format(currentDate);
                  var noteModel = NoteModel(
                      title: title!,
                      subTitle: subtitle!,
                      date: formmatedDate,
                      color: Colors.blue.value);
                  BlocProvider.of<AddNotesCubit>(context).addNote(noteModel);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                }
                setState(() {});
              },
            ),
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
