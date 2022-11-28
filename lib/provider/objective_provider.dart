import 'package:flutter/cupertino.dart';

import '../data/db_helper.dart';
import '../models/objective_model.dart';

class ObjectiveProvider extends ChangeNotifier {
  static TextEditingController objectiveController = TextEditingController();
  ObjectiveProvider() {
    getAllObjectives();
  }

  List<ObjectiveModel> allObjectives = [];

  getAllObjectives() async {
    allObjectives = await DbHelper.dbHelper.getAllObjectivess();
    notifyListeners();
  }

  insertNewEducation() {
    ObjectiveModel objectiveModel =
        ObjectiveModel(objective: objectiveController.text);
    DbHelper.dbHelper.insertNewObjective(objectiveModel);
    getAllObjectives();
  }
}
