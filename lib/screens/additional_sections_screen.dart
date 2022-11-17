import 'package:flutter/material.dart';

import '../ui/addtional_section_container.dart';

class AdditionalSectionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('Experience'),
          Icon(
            Icons.check,
            color: Colors.white,
            size: 40,
          )
        ],
      )),
      body: SingleChildScrollView(
          child: Column(children: [
        AditionalSectionContainer('Reference', true),
        AditionalSectionContainer('Additional Information', false),
        AditionalSectionContainer('Interests', false),
        AditionalSectionContainer('Projects', true),
        AditionalSectionContainer('Language', false),
        AditionalSectionContainer('Achievements & Awards', false),
        AditionalSectionContainer('Activities', false),
        AditionalSectionContainer('Publication', false),
        AditionalSectionContainer('Signature', false),
        Container(
          margin: const EdgeInsets.only(top: 15),
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.cyan[800]!),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0)),
                )),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text('Create New Section',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            ),
          ),
        )
      ])),
    );
  }
}
