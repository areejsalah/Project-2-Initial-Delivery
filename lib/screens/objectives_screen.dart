import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/objective_model.dart';
import 'package:flutter_application_1/provider/objective_provider.dart';
import 'package:flutter_application_1/screens/resume_screen.dart';
import 'package:flutter_application_1/screens/saved_objectives_screen.dart';
import 'package:provider/provider.dart';

class ObjectivesScreen extends StatefulWidget {
  TextEditingController? obController;
  ObjectiveModel? objectiveModel;
  ObjectivesScreen({this.objectiveModel});
  void initState() {
    obController = ObjectiveProvider.objectiveController
      ..text = objectiveModel?.objective ?? '';
  }

  State<ObjectivesScreen> createState() => _ObjectivesScreenState();
}

class _ObjectivesScreenState extends State<ObjectivesScreen> {
  @override
  Widget build(BuildContext context) {
    //TextEditingController objectController2 = widget.obController!;
    ObjectiveModel? obModel;
    if (widget.objectiveModel == null) {
      obModel = null;
    } else {
      obModel = widget.objectiveModel;
    }
    TextEditingController obController = ObjectiveProvider.objectiveController
      ..text = obModel?.objective ?? '';
    // TextEditingController? obController = widget.obController?.text = obModel?.objective ?? '' ?? ;

    // TextEditingController obController = TextEditingController()
    //  ..text = obModel?.objective ?? '';

    return Consumer<ObjectiveProvider>(builder: (context, provider, child) {
      return Scaffold(
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SavedObjectiveScreen();
              }));
            },
            label: const Text(
              'Select Objective',
              style: TextStyle(fontSize: 20),
            ),
            icon: const Icon(Icons.add),
          ),
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
              title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Objective'),
              InkWell(
                onTap: () {
                  provider.getAllObjectives();
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
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
          body: Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: obController,
                minLines: 4,
                maxLines: 6,
                decoration: InputDecoration(
                  labelText: 'Objective',
                  //hintText: obModel?.objective ?? '',
                  labelStyle: TextStyle(color: Colors.cyan[900], fontSize: 20),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.black)),
                ),
              )));
    });
  }
}
