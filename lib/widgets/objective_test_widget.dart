import 'package:flutter/material.dart';

import '../models/objective_model.dart';

class ObjectiveTestWidget extends StatelessWidget {
  ObjectiveModel objectiveModel;
  ObjectiveTestWidget(this.objectiveModel);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        color: Colors.grey[100],
        child: Column(children: [
          Text(
            objectiveModel.objective!,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ]));
  }
}
