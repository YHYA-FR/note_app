import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes/companent/customBotton.dart';
import 'package:notes/constVar.dart';
import 'package:notes/companent/homeTitle.dart';
import 'package:notes/companent/notesContainer.dart';

// ignore: camel_case_types
class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
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
              height: MediaQuery.sizeOf(context).height / 1.14,
              width: MediaQuery.sizeOf(context).width / 1.1,
              child: ListView.builder(
                itemBuilder: (context, index) =>  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: GestureDetector(child: const notesContainer(),onTap: () {
                    Get.toNamed('notePage');
                  },),
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
                Get.bottomSheet(Container(
                  height: MediaQuery.sizeOf(context).height/1.8,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  child:  Column(
                    children: [
                       const textFieldTitle(),
                   
                   const textFieldBody(),
                   Padding(
                     padding: const EdgeInsets.only(top: 90),
                     child: costomBotton(buttonText: 'Create',bottonColor:Color.fromARGB(255, 142, 74, 190), shadow: Color.fromARGB(255, 141, 97, 211)),
                   ),

                    ],
                  ),
                ),
                );
              },
              child: const Icon(Icons.add, color: Colors.white, size: 28,),
            ),
          ),
        ),
      ),
    );
  }
}

class textFieldBody extends StatelessWidget {
  const textFieldBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                  height: 160,
                  child: TextField(
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
         labelStyle: const TextStyle(color: Color.fromARGB(255, 61, 40, 134)),
         focusedBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(12),
           borderSide: const BorderSide(
             width: 2,
             color: Colors.blue,
           ),
         ),
         enabledBorder: const OutlineInputBorder(
             borderSide:
                 BorderSide(color: Color.fromARGB(255, 142, 74, 190), width: 2))),
                  ),
                );
  }
}

class textFieldTitle extends StatelessWidget {
  const textFieldTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        labelText: 'Title',
                        labelStyle: const TextStyle(color: Color.fromARGB(255, 116, 74, 196),),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
         const BorderSide(color: Colors.blue, width: 2),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
       color: Color.fromARGB(255, 103, 69, 177),
       width: 2,
                          ),
                        ),
                      ),
                    ),
    );
  }
}
