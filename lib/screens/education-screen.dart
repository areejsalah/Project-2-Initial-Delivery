import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/education_provider.dart';
import 'package:flutter_application_1/screens/resume_screen.dart';
import 'package:flutter_application_1/widgets/education_widget.dart';
import 'package:provider/provider.dart';

class EducationScreen extends StatefulWidget {
  const EducationScreen({super.key});

  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  int count = 1;
  List<EducationWidget> educationWidgets = [];
  void addNewEducation() {
    setState(() {
      educationWidgets.add(EducationWidget());
      count++;
      log(educationWidgets.length.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    educationWidgets = List.generate(count, (index) => EducationWidget());
    return Consumer<EducationProvider>(
      builder: ((context, provider, child) {
        return Scaffold(
            floatingActionButton: FloatingActionButton.extended(
              onPressed: addNewEducation,
              label: const Text('Add'),
              icon: const Icon(Icons.add),
            ),
            appBar: AppBar(
                title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Education'),
                InkWell(
                  onTap: () {
                    provider.insertNewEducation();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ResumeScreen();
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
            body: ListView.builder(
                itemCount: educationWidgets.length,
                itemBuilder: (context, index) {
                  return educationWidgets[index];
                }));
      }),
    );
  }
}
