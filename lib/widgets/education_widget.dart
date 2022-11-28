import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/education_provider.dart';

import '../components/custom_text_field.dart';

class EducationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        height: 400,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                color: Colors.blueGrey[600],
              ),
              padding: const EdgeInsets.all(10),
              child: Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Education 1',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Icon(
                      Icons.delete,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
            CustomTextField(
                'Course / Degree', EducationProvider.universityController),
            CustomTextField(
                'School / University', EducationProvider.degreeController),
            CustomTextField('Grade / Score', EducationProvider.gradeController),
            CustomTextField('Year', EducationProvider.yearController),
          ],
        ),
      ),
    );
  }
}
