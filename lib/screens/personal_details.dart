import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/personal_resume.dart';
import 'package:flutter_application_1/screens/resume_screen.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import '../components/custom_text_field.dart';
import '../components/image_picker_button.dart';
import '../provider/personal_details_provider.dart';

class PersonalDetials extends StatefulWidget {
  const PersonalDetials({super.key});

  @override
  State<PersonalDetials> createState() => _PersonalDetialsState();
}

class _PersonalDetialsState extends State<PersonalDetials> {
  @override
  Widget build(BuildContext context) {
    return Consumer<PersonalDetailsProvider>(
      builder: (context, provider, child) {
        return Scaffold(
            appBar: AppBar(
                title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Personal Details'),
                InkWell(
                  onTap: () {
                    provider.insertNewPersonalDetails();
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return PersonalResume();
                    }));
                  },
                  child: const Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 40,
                  ),
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
                CustomTextField('Name', PersonalDetailsProvider.nameController),
                CustomTextField('Address (Optional)',
                    PersonalDetailsProvider.addressController),
                CustomTextField(
                    'Email', PersonalDetailsProvider.emailController),
                CustomTextField(
                    'Phone', PersonalDetailsProvider.phoneController),
                CustomTextField('Date Of Birth (Optional)',
                    PersonalDetailsProvider.dateOfBirthController),
                CustomTextField('Website (Optional)',
                    PersonalDetailsProvider.websiteController),
                CustomTextField('LinkedIn (Optional)',
                    PersonalDetailsProvider.linkedInController),
                Row(
                  children: [
                    ImagePickerButton(),
                    Text(
                      'Photo (Optional)',
                      style:
                          TextStyle(fontSize: 22, color: Colors.blueGrey[700]),
                    )
                  ],
                )
              ]),
            )));
      },
    );
  }
}
