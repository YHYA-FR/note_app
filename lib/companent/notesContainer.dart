import 'package:flutter/material.dart';
import 'package:notes/modle/note_modle.dart';

class notesContainer extends StatelessWidget {
   notesContainer({
    super.key,
    required this.note
  });
noteModle note;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color:Color(note.color),
          borderRadius: BorderRadius.circular(10),
        ),
        height: MediaQuery.sizeOf(context).height / 4.7,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Row(
                children: [
                  const SizedBox(
                    width: 28,
                  ),
                   Text(
                    note.title,
                    style: const TextStyle(fontSize: 24),
                  ),
                  const SizedBox(
                    width: 185,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.delete,
                        size: 28,
                      ))
                ],
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(top: 12, left: 20, bottom: 65),
              child: Text(
                note.body,
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(left: 230),
              child: Text(
                note.date,
              ),
            )
          ],
        ),
      );
  }
}
