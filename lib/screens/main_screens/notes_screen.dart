import 'package:flutter/material.dart';
import '../../widgets/dhay_appbar.dart';
import '../../widgets/notes_widgets/calendar_widget.dart';
import '../../widgets/notes_widgets/notes_preview_widget.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: ListView(
        children: const [
          DhayAppBar(),
          SizedBox(height: 20),
          CalendarWidget(),
          SizedBox(height: 20),
          NotesPreviewWidget()
        ],
      ),
    );
  }
}
