import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/additional_section.dart';

class AditionalSectionContainer extends StatelessWidget {
  String sectionName;
  bool isSwiched;
  AditionalSectionContainer(this.sectionName, this.isSwiched);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          sectionName,
          style: TextStyle(
              color: Colors.grey[600],
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
        Switch(
          value: isSwiched,
          activeColor: Colors.cyan[800],
          onChanged: (value) {
            value = !isSwiched;
            if (isSwiched) {
              AdditionalSection(Icons.abc, sectionName);
            }
          },
        )
      ]),
    );
  }
}
