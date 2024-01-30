import 'package:flutter/material.dart';

import 'custom_note_item.dart';

class NotesItemList extends StatelessWidget {
  const NotesItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 4),
            child: NoteItem(),
          );
        });
  }
}
