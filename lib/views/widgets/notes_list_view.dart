import 'custom_note_item.dart';
import 'package:flutter/material.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);
  final data = const [
    
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 9,
      itemBuilder: (BuildContext context, int index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 4.0),
          child: NoteItem(),
        );
      },
    );
  }
}
