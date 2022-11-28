

import 'package:flutter/cupertino.dart';

import '../components/custom_text_field.dart';

class PersonalDetailsWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Column(children: [
             CustomTextField('Name'),
            CustomTextField('Address (Optional)'),
            CustomTextField('Email'),
            CustomTextField('Phone'),
            CustomTextField('Date Of Birth (Optional)'),
            CustomTextField('Website (Optional)'),
            CustomTextField('LinkedIn (Optional)'), 
          ]),
        ),
  }

}