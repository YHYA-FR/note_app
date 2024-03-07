import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:notes/modle/note_modle.dart';

class addNoteController extends GetxController {
  var noteBox = Hive.box('notes');
  addNote(noteModle note) {
    noteBox.add(note);
  }

  getAllNotes() {
    List<dynamic> notes = noteBox.values.toList();
    return notes;
  }
}
