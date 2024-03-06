import 'package:flutter/material.dart';

class costomBotton extends StatelessWidget {
  costomBotton(
      {super.key,
        this.bottonColor,
        this.textColor,
        this.ontap,
        this.shadow,
        required this.buttonText});
  String buttonText;
  Color? textColor;
  Color? shadow;
  Color? bottonColor;
  VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding:
        const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
        child: Container(
          width:250,
          height: 50,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color:  shadow!.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(2, 2), // changes position of shadow
              ),
            ],
            color: bottonColor,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
                fontFamily: 'PlayfairDisplay',
                fontSize: 15
              ),
            ),
          ),
        ),
      ),
    );
  }
}