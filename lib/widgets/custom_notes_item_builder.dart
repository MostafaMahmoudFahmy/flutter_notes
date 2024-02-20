import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/notes_state.dart';
import 'package:notes_app/model/note_model.dart';

import 'custom_note_item.dart';

class NotesItemList extends StatelessWidget {
  const NotesItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> note = BlocProvider.of<NotesCubit>(context).notes ?? [];

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: note.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: NoteItem(note: note[index]),
              );
            },
          ),
        );
      },
    );
  }
}
