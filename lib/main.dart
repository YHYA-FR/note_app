import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:notes/view/home.dart';
import 'package:notes/view/notePage.dart';

void main() {
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