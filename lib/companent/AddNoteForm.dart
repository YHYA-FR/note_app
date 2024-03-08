
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:get/get.dart';
import 'package:notes/companent/customBotton.dart';
import 'package:notes/companent/textFieldBody.dart';
import 'package:notes/companent/textFieldtitle.dart';
import 'package:notes/controller/addNoteController.dart';
import 'package:notes/modle/note_modle.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
    required this.c,
  });

  final addNoteController c;

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> globalKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title;
  String? body;
  noteModle? note;
  Color color =Colors.black87;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: globalKey,
      child: Column(
        children: [
          textFieldTitle(
            onSave: (p0) {
              title = p0;
            },
          ),
          textFieldBody(
            onSave: (p0) {
              body = p0;
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 9),
            child: costomBotton(
              buttonText: 'pick color',
              bottonColor: Color.fromARGB(255, 142, 74, 190),
              shadow: Color.fromARGB(255, 141, 97, 211),
              ontap: () {
                Get.defaultDialog(
                  title: 'pick color',
                  backgroundColor: Colors.white38,
                  content: SingleChildScrollView(
                        child: ColorPicker(

                          onColorChanged:(value) {
                            color=value;
                            print(value);
                          },
                          pickerColor: Color(0xfffffff),
                          paletteType: PaletteType.hueWheel,
                        ),
                    ),
                );


              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 19),
            child: costomBotton(
              buttonText: 'Create',
              bottonColor: Color.fromARGB(255, 142, 74, 190),
              shadow: Color.fromARGB(255, 141, 97, 211),
              ontap: () {
                if (globalKey.currentState!.validate()) {
                  globalKey.currentState!.save();

                  widget.c.addNote(
                    noteModle(
                        body: body!,
                        color: color.value,
                        date: DateTime.now().toString(),
                        title: title!),
                  );
                } else {
                  autovalidateMode = AutovalidateMode.always;
                }

              },
            ),
          ),
        ],
      ),
    );
  }
}
