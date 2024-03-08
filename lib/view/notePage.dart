import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes/constVar.dart';
import 'package:notes/companent/homeTitle.dart';
import 'package:notes/modle/note_modle.dart';

class notePage extends StatelessWidget {
  var titleController =TextEditingController( );
  var bodyController =TextEditingController( );
  @override
  Widget build(BuildContext context) {
    noteModle data=Get.arguments;
    titleController.text=data.title;
    bodyController.text=data.body;
    return SafeArea(
      child: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: linearGradient,
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              titlePage('Edite Note', Icons.done, 150),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 36),
                child: TextField(
                  controller: titleController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    labelText: 'Title',
                    labelStyle: const TextStyle(color: Colors.black,),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 2),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: SizedBox(
                  height: 220,
                  child: TextField(
                    controller: bodyController,
                    maxLines: null,
                    expands: true,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 16, top: 16),
                        isCollapsed: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        labelText: 'body',
                        labelStyle: const TextStyle(color: Colors.black),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            width: 2,
                            color: Colors.blue,
                          ),
                        ),
                        enabledBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2))),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
