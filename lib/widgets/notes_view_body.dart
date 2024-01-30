import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';

import 'custom_notes_item_builder.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(right: 16, left: 16, top: 24),
        child: Column(
          children: [CustomAbbBar(), Expanded(child: NotesItemList())],
        ),
      ),
    );
  }
}
