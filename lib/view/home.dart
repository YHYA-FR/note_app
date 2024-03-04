import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
              onPressed: () {},
              child: const Icon(Icons.add, color: Colors.white, size: 28,),
            ),
          ),
        ),
      ),
    );
  }
}
