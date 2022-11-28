import 'package:flutter/material.dart';

import '../models/education_model.dart';

class EducationWidgetTest extends StatelessWidget {
  EducationModel educationModel;
  EducationWidgetTest(this.educationModel);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          color: Colors.grey[100],
          child: Column(children: [
            Text(
              educationModel.university!,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              educationModel.degree!,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              educationModel.grade!,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              educationModel.year!,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ]),
        ),
      ],
    );
  }
}
