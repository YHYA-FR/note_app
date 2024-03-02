import 'package:flutter/material.dart';
import 'package:notes/constVar.dart';
import 'package:notes/homeTitle.dart';
import 'package:notes/notePage.dart';
import 'package:notes/notesContainer.dart';

// ignore: camel_case_types
class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
  
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'home':(context) => home(),
        'notePage':(context) => notePage(),
        
      },
      home: SafeArea(
        child: DecoratedBox(
          decoration: const BoxDecoration(
            gradient: linearGradient,
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: [
                const titleHomePage(),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height/1.15 ,
                  width: MediaQuery.sizeOf(context).width/1.1,
                  child: ListView.builder(
                    itemBuilder: (context, index) => const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: notesContainer(),
                    ),),
                ),
                FloatingActionButton(onPressed: () => null,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}


