import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/experience_widget.dart';

class ExperienceScreen extends StatefulWidget {
  const ExperienceScreen({super.key});

  @override
  State<ExperienceScreen> createState() => _ExperienceScreenState();
}

class _ExperienceScreenState extends State<ExperienceScreen> {
  @override
  int count = 1;
  List<ExperienceWidget> experienceWidgets = [];
  void addNewExperience() {
    setState(() {
      experienceWidgets.add(ExperienceWidget());
      count++;
      log(experienceWidgets.length.toString());
    });
  }

  Widget build(BuildContext context) {
    experienceWidgets = List.generate(count, (index) => ExperienceWidget());
    return Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          onPressed: addNewExperience,
          label: const Text('Add'),
          icon: const Icon(Icons.add),
        ),
        backgroundColor: Colors.grey[200],
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
        body: ListView.builder(
            itemCount: experienceWidgets.length,
            itemBuilder: (context, index) {
              return experienceWidgets[index];
            }));
  }
}
