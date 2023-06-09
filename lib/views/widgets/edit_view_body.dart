import 'package:flutter/material.dart';

import 'custom_text_field.dart';
import 'custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 50),
          const CustomAppBar(
            title: 'Edit Notes',
            icon: Icons.check,
          ),
          const CustomTextField(hint: 'Title'),
          const SizedBox(height: 16),
          const CustomTextField(
            hint: 'Content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
