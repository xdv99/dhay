import 'package:flutter/material.dart';
import '../../models/default_colors.dart';

class NotesPreviewWidget extends StatelessWidget {
  const NotesPreviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            NoteListTile(content: "Industrial engineering exam"),
            SizedBox(height: 20),
            NoteListTile(content: "Digital technology Homework"),
          ],
        ),
        const SizedBox(height: 20),
        // Add New Note
        TextField(
          decoration: InputDecoration(
              suffixIcon: Padding(
                padding: const EdgeInsets.all(5),
                child: IconButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: pink,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    icon: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    onPressed: () {}),
              ),
              hintText: "Add your note"),
        ),
      ],
    );
  }
}

class NoteListTile extends StatelessWidget {
  const NoteListTile({super.key, required this.content});

  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
                color: Colors.black12, offset: Offset(0, 2), blurRadius: 5)
          ]),
      child: ListTile(
        title: Text(content),
        leading: const Icon(
          Icons.checklist_rounded,
          color: regularPurple,
          size: 28,
        ),
        trailing: const Icon(Icons.more_vert_rounded),
      ),
    );
  }
}
