import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/const_file.dart';
import 'package:notes_app/cubits/notes_cubit/notes_state.dart';
import 'package:notes_app/model/note_model.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes() async {
    emit(NotesLoading());

    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      NotesSuccess(noteBox.values.toList());
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
