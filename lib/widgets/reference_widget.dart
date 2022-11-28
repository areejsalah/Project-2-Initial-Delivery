import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/reference_provider.dart';

import '../components/custom_text_field.dart';

class ReferenceWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      margin: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                color: Colors.blueGrey[700],
              ),
              padding: const EdgeInsets.all(10),
              child: Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Refrence 1',
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
                'Reference Name', ReferenceProvider.referenceNameController),
            CustomTextField('Job Title', ReferenceProvider.jobTitleController),
            CustomTextField(
                'Company Name', ReferenceProvider.companyNameController),
            CustomTextField('Email', ReferenceProvider.emailController),
            CustomTextField('Phone', ReferenceProvider.phoneController),
          ],
        ),
      ),
    );
  }
}
