import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/models/skill_model.dart';

import '../data/db_helper.dart';

class SkillProvider extends ChangeNotifier {
  static TextEditingController skillController = TextEditingController();

  SkillProvider() {
    getAllSkills();
  }
  List<SkillModel> allSkills = [];

  getAllSkills() async {
    allSkills = await DbHelper.dbHelper.getAllSkills();
    notifyListeners();
  }

  insertNewSkill() {
    SkillModel skillModel = SkillModel(title: skillController.text);
    DbHelper.dbHelper.insertNewSkill(skillModel);
    getAllSkills();
  }
}
