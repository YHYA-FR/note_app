import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes/companent/AddNoteForm.dart';
import 'package:notes/companent/customBotton.dart';
import 'package:notes/companent/textFieldBody.dart';
import 'package:notes/companent/textFieldtitle.dart';
import 'package:notes/constVar.dart';
import 'package:notes/companent/homeTitle.dart';
import 'package:notes/companent/notesContainer.dart';
import 'package:notes/controller/addNoteController.dart';
import 'package:notes/modle/note_modle.dart';


// ignore: camel_case_types
class home extends StatelessWidget {
  const home({super.key});
  @override
  Widget build(BuildContext context) {
    final c = Get.put(addNoteController());
    List<dynamic>? notes = c.getAllNotes() ?? [];
    return DecoratedBox(
      decoration: const BoxDecoration(
        gradient: linearGradient,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            titlePage('NOTES', Icons.search, 180),
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 1.15,
              width: MediaQuery.sizeOf(context).width / 1.1,
              child: ListView.builder(
                itemCount: notes!.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: GestureDetector(
                    child: notesContainer(note: notes[index],index: index),
                    onTap: () {
                      Get.toNamed('notePage',arguments: notes[index]);
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: SizedBox(
          width: 70,
          child: FittedBox(
            child: FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 22, 59, 77),
              onPressed: () {
                Get.bottomSheet(
                  isScrollControlled: true,
                  Container(
                    height: MediaQuery.sizeOf(context).height / 1.8,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 49, 183, 168),
                    ),
                    child: AddNoteForm(c: c),
                  ),
                );
              },
              child: const Icon(
                Icons.add,
                color: Colors.white,
                size: 28,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
