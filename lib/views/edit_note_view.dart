import 'package:flutter/material.dart';

import 'widgets/edit_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({Key? key}) : super(key: key);

  // final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const EditNoteViewBody(),
    );
  }
}
