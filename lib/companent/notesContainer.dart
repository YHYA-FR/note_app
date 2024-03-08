import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:notes/modle/note_modle.dart';

class notesContainer extends StatelessWidget {
   const notesContainer({
    super.key,
    required this.note,
     required this.index,
  });
final noteModle note;
final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color:Color(note.color),
          borderRadius: BorderRadius.circular(10),
        ),
        height: MediaQuery.sizeOf(context).height / 4.5,
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
                   SizedBox(
                       width: 200,
                     height: 30,
                     child: Text(
                       overflow: TextOverflow.clip,
                      note.title,
                      style: const TextStyle(fontSize: 24),
                  ),
                   ),
                  const SizedBox(
                    width: 85,
                  ),
                  IconButton(
                      onPressed: () {
                        Hive.box('notes').deleteAt(index);
                      },
                      icon: const Icon(
                        Icons.delete,
                        size: 28,
                      ))
                ],
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(top: 4, left: 20),
              child: SizedBox(
                height: 100,
                width: 250,
                child: Text(
                  note.body,
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(left: 150),
              child: Text(
                note.date,
              ),
            )
          ],
        ),
      );
  }
}
