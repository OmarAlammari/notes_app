import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../../constants.dart';
import '../../models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  // Color color = const Color(0xffAC3931);
  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      emit(AddNoteSuccess());

      await noteBox.add(note);
    } on Exception catch (e) {
      emit(AddNoteFailure(errMessage: e.toString()));
    }
  }
}
