import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  String label;
  MyTextField(this.label, {super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      child: TextFormField(
        decoration: InputDecoration(
            border: const OutlineInputBorder(),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.black)),
            hintText: label),
      ),
    );
  }
}
