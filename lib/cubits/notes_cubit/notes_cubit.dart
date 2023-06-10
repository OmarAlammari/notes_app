import 'package:applaid_app_13_notes_app/constants.dart';
import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  fetchAllNotes() async {
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      // List<NoteModel> notes = noteBox.values.toList();
      // emit(NotesSuccess(notes: notes));

      emit(NotesSuccess(notes: noteBox.values.toList()));
    } on Exception catch (e) {
      emit(NotesFailure(errMessage: e.toString()));
    }
  }
}
