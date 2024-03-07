import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:notes/modle/note_modle.dart';
import 'package:notes/view/home.dart';
import 'package:notes/view/notePage.dart';
import 'package:hive_flutter/hive_flutter.dart';
void main()async {
  await Hive.initFlutter();
  Hive.registerAdapter(noteModleAdapter());
  await Hive.openBox('testBox');
  runApp(const myApp());
}


class myApp extends StatelessWidget
{
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return   GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/home', page: () => home(),),
          GetPage(name: '/notePage', page: () => notePage(),)
        
      ],
        home: SafeArea(child: home(),));
  }
  
}