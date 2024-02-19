import 'package:flutter/material.dart';
import 'package:notes_app/cubits/add_nate_cubit/add_notes_cubit.dart';
import 'package:notes_app/cubits/add_nate_cubit/add_notes_state.dart';

import 'add_note_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: Padding(
        padding: EdgeInsets.only(
            left: 16,
            right: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom),
        child: BlocConsumer<AddNotesCubit, AddNotesState>(
          listener: (context, state) {
            if (state is AddNotesFailure) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Error occurred! : ${state.errorMessage}')));
            }
            if (state is AddNotesSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is AddNotesLoading ? true : false,
              child: const SingleChildScrollView(
                child: AddNoteForm(),
              ),
            );
          },
        ),
      ),
    );
  }
}
