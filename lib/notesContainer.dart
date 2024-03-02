import 'package:flutter/material.dart';

class notesContainer extends StatelessWidget {
  const notesContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 197, 185, 213),
        borderRadius: BorderRadius.circular(10) ,
      ),
      height: MediaQuery.sizeOf(context).height/4.7,
                 
                    );
  }
}