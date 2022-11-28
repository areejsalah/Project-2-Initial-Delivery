import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/saved_objectives_screen.dart';

import '../widgets/project_widget.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  int count = 1;
  List<ProjectWidget> projectsWidgets = [];
  void addNewProject() {
    setState(() {
      projectsWidgets.add(ProjectWidget());
      count++;
      log(projectsWidgets.length.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    projectsWidgets = List.generate(count, (index) => ProjectWidget());
    return Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          onPressed: addNewProject,
          label: const Text('Add'),
          icon: const Icon(Icons.add),
        ),
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
            title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Projects'),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SavedObjectiveScreen();
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
            itemCount: projectsWidgets.length,
            itemBuilder: (context, index) {
              return projectsWidgets[index];
            }));
  }
}
