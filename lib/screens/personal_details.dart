import 'package:flutter/material.dart';

class PersonalDetials extends StatelessWidget {
  const PersonalDetials({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('Personal Details'),
          Icon(
            Icons.check,
            color: Colors.white,
            size: 40,
          )
        ],
      )),
      body: SingleChildScrollView(
        child: 
      ),
    );
  }
}
