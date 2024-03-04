

// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: must_be_immutable, camel_case_types
class titlePage extends StatelessWidget {
   titlePage(this.title,
    this.icon,
    this.spaceBetl,{
    super.key,
    
  });
    String title;
    IconData icon;
    double spaceBetl;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 20),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 24,
            ),
          ),
        ),
         SizedBox(
          width: spaceBetl,
        ),
        IconButton(
          onPressed: () {},
          icon:  Icon(icon, size: 32,),
        ),
      ],
    );
  }
}
