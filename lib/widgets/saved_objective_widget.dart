import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/objective_model.dart';

class SavedObjectiveWidget extends StatelessWidget {
  ObjectiveModel objectiveModel;
  SavedObjectiveWidget(this.objectiveModel);
  late String value;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
       
      },
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
          ),
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(top: 5, bottom: 5, right: 10, left: 10),
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
    );
  }
}
