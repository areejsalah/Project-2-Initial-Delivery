import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/dummy_data.dart';
import 'package:flutter_application_1/models/objective_model.dart';
import 'package:flutter_application_1/screens/objectives_screen.dart';

class SavedObjectiveScreen extends StatelessWidget {
  String name = "ahmad";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Select Objective')),
      body: ListView.builder(
          // physics: const AlwaysScrollableScrollPhysics(),
          // scrollDirection: Axis.vertical,
          // shrinkWrap: true,
          itemCount: objectives.length,
          itemBuilder: (context, index) {
            ObjectiveModel objectiveModel = objectives[index];
            log('$index');
            // log(objectiveModel.objective!);
            // log('$objectives'.length.toString());
            return Card(
              child: ListTile(
                title: Text(objectiveModel.objective!),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ObjectivesScreen(
                        objectiveModel: objectiveModel,
                      ),
                    ),
                  );
                },
              ),
            );
          }),
    );
  }
}
          /*return InkWell(
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(
                    top: 5, bottom: 5, right: 10, left: 10),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    objectiveModel.objective!,
                    style: TextStyle(
                        color: Colors.cyan[900],
                        fontSize: 17,
                        fontFamily: 'RobotoMono'),
                  ),
                )),
            onTap: () {
              //  AppRouter.goToScreen('objectiveScreen', arguments: objectiveModel);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ObjectivesScreen(
                    objectiveModel: objectiveModel,
                  ),
                ),
              );
            },
          );
        }),*/
          /*itemBuilder: ((context, index) {
            return objectives
                .map((e) => SavedObjectiveWidget(e))
                .toList()[index];
          })*/
        
