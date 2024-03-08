
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class textFieldTitle extends StatelessWidget {
  const textFieldTitle({
    super.key,
    required this.onSave
  });
final void Function(String?)? onSave;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: TextFormField(
          onSaved:onSave ,
        validator: (value) {
          if(value?.isEmpty ?? true){
              return 'Field is required';
            }
          else
            return null;
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          labelText: 'Title',
          labelStyle: const TextStyle(
            color: Color.fromARGB(255, 116, 74, 196),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.blue, width: 2),
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