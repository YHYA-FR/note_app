
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class textFieldBody extends StatelessWidget {
  const textFieldBody({
    super.key,
    required this.onSave,
  });
  final void Function(String?)? onSave;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: TextFormField(
        onSaved:onSave ,
        validator: (value) {
          if(value?.isEmpty ?? true){
            return 'Field is required';
          }
          else
            return null;
        },
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
            labelStyle:
            const TextStyle(color: Color.fromARGB(255, 61, 40, 134)),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                width: 2,
                color: Colors.blue,
              ),
            ),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromARGB(255, 142, 74, 190), width: 2))),

      ),
    );
  }
}
