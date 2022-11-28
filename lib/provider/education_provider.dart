import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/data/db_helper.dart';
import 'package:flutter_application_1/models/education_model.dart';

class EducationProvider extends ChangeNotifier {
  static TextEditingController universityController = TextEditingController();
  static TextEditingController degreeController = TextEditingController();
  static TextEditingController gradeController = TextEditingController();
  static TextEditingController yearController = TextEditingController();
  EducationProvider() {
    getAllEducations();
  }

  List<EducationModel> allEducations = [];

  getAllEducations() async {
    allEducations = await DbHelper.dbHelper.getAllEducations();
    notifyListeners();
  }

  insertNewEducation() {
    EducationModel educationModel = EducationModel(
        university: universityController.text,
        degree: degreeController.text,
        grade: gradeController.text,
        year: yearController.text);
    DbHelper.dbHelper.insertNewEducation(educationModel);
    getAllEducations();
  }
}
