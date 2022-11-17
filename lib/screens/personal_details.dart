import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/text_field.dart';

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
        child: Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Column(children: [
            MyTextField('Name'),
            MyTextField('Address (Optional)'),
            MyTextField('Email'),
            MyTextField('Phone'),
            MyTextField('Date Of Birth (Optional)'),
            MyTextField('Website (Optional)'),
            MyTextField('LinkedIn (Optional)'),
          ]),
        ),
      ),
    );
  }
}
