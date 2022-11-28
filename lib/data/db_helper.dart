import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:flutter_application_1/models/education_model.dart';
import 'package:flutter_application_1/models/objective_model.dart';
import 'package:flutter_application_1/models/personal_details_model.dart';

import 'package:flutter_application_1/models/skill_model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import '../models/photo.dart';

class DbHelper {
  DbHelper._();
  static DbHelper dbHelper = DbHelper._();
  final String eduTabelName = 'education';
  final String eduIdColumnlName = 'id';
  final String eduDegreeColumnName = 'degree';
  final String eduUniversityColumnName = 'university';
  final String eduGradeColumnName = 'grade';
  final String eduYearColumnName = 'year';

  static const String experTabelName = 'experiences';
  static const String expIdColumnlName = 'id';
  static const String expCompNameColumnName = 'companyName';
  static const String jobTitleColumnName = 'jobTitle';
  static const String fromDateColumnName = 'fromDate';
  static const String toDateColumnName = 'toDate';
  static const String detialsColumnName = 'detials';

  final String personalDetailsTabelName = 'personal_details';
  final String personIdColumnlName = 'id';
  final String personNameColumnName = 'name';
  final String personAddressColumnName = 'address';
  final String personEmailColumnName = 'email';
  final String personPhoneColumnName = 'phone';
  final String personDateOfBithColumnName = 'dateOfBirth';
  final String personWebsiteColumnName = 'website';
  final String personLinkedInName = 'linkedIn';
  final String personPhotoColumnName = 'image';

  final String skillsTabelName = 'skills';
  final String skillIdColumnlName = 'id';
  final String skillTitleColumnName = 'title';

  static const String objectivesTabelName = 'objectives';
  static const String objectiveIdColumnlName = 'id';
  static const String objectiveTitleColumnName = 'objective';

  Database? database;
  initiateDataBase() async {
    database = await createDataBaseConnection();
  }

  Future<Database> createDataBaseConnection() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String folderPath = directory.path;
    log('the database is created');

    Database database = await openDatabase('$folderPath/tasks.db', version: 6,
        onCreate: (db, version) {
      db.execute('''DROP TABLE tasks''');
      db.execute('''CREATE TABLE $eduTabelName (
            $eduIdColumnlName INTEGER PRIMARY KEY AUTOINCREMENT, 
            $eduDegreeColumnName TEXT,
             $eduUniversityColumnName TEXT,
             $eduGradeColumnName TEXT,
            $eduYearColumnName TEXT)''');
    }, onUpgrade: (db, oldVersion, newVersion) {
      db.execute('''CREATE TABLE $personalDetailsTabelName(
          $personIdColumnlName INTEGER PRIMARY KEY AUTOINCREMENT,
          $personNameColumnName TEXT,
          $personAddressColumnName TEXT,
          $personEmailColumnName TEXT,
          $personPhoneColumnName TEXT,
          $personDateOfBithColumnName TEXT,
          $personWebsiteColumnName TEXT,
          $personLinkedInName TEXT,
          $personPhotoColumnName TEXT
          )''');

      db.execute('''CREATE TABLE $experTabelName (
            $expIdColumnlName INTEGER PRIMARY KEY AUTOINCREMENT, 
            $expCompNameColumnName TEXT,
            $jobTitleColumnName TEXT,
            $fromDateColumnName TEXT,
            $toDateColumnName TEXT,
            $detialsColumnName TEXT)''');

      db.execute('''CREATE TABLE $objectivesTabelName (
            $objectiveIdColumnlName INTEGER PRIMARY KEY AUTOINCREMENT, 
            $objectiveTitleColumnName TEXT )''');
      db.execute('''CREATE TABLE $skillsTabelName (
          $skillIdColumnlName INTEGER PRIMARY KEY AUTOINCREMENT, 
          $skillTitleColumnName TEXT
          )''');
    }, onOpen: (db) async {
      final tables =
          await db.rawQuery('SELECT name FROM sqlite_master ORDER BY name;');
      log(tables.toString());
    });

    return database;
  }

  Future savePhoto(String photo) async {
    //var dbClient = await database;
    String result = (await database!.rawInsert(
            'INSERT INTO $personalDetailsTabelName (image) VALUES($photo)'))
        as String;
    return result;
  }

  Future<Photo> save(Photo photo) async {
    // photo.id=
    int id = await database!.insert(personalDetailsTabelName, photo.toMap());
    return photo;
  }

  Future<int> insertNewPersonalDetials(
      PersonalDetailsModel personalDetailsModel) async {
    int i = await database!
        .insert(personalDetailsTabelName, personalDetailsModel.toMap());

    return i;
  }

  Future<List<PersonalDetailsModel>> getPersonalDetailsForAPerson(
      PersonalDetailsModel personalDetailsModel) async {
    // raw query
    List<Map<String, dynamic>> result = await database!.rawQuery(
        'SELECT * FROM $personalDetailsTabelName WHERE id=?',
        [personalDetailsModel.id]);

    // print the results
    return result.map((e) => PersonalDetailsModel.fromMap(e)).toList();
  }

  Future<int> deletePersonalDetails(
      PersonalDetailsModel personalDetailsModel) async {
    int count = await database!.delete(personalDetailsTabelName,
        where: 'id=?', whereArgs: [personalDetailsModel.id]);
    return count;
  }

  Future<List<PersonalDetailsModel>> getPersonalDetailss() async {
    List<Map<String, dynamic>> data =
        await database!.query(personalDetailsTabelName);
    return data.map((e) => PersonalDetailsModel.fromMap(e)).toList();
  }

  Future<int> insertNewEducation(EducationModel educationModel) async {
    int i = await database!.insert(eduTabelName, educationModel.toMap());
    return i;
  }

  Future<List<EducationModel>> getAllEducations() async {
    List<Map<String, dynamic>> data = await database!.query(eduTabelName);
    return data.map((e) => EducationModel.fromMap(e)).toList();
  }

  Future<int> deleteEducation(EducationModel educationModel) async {
    int count = await database!
        .delete(eduTabelName, where: 'id=?', whereArgs: [educationModel.id]);
    return count;
  }

  Future<int> insertNewSkill(SkillModel skillModel) async {
    int i = await database!.insert(skillsTabelName, skillModel.toMap());
    return i;
  }

  Future<List<SkillModel>> getAllSkills() async {
    List<Map<String, dynamic>> data = await database!.query(skillsTabelName);
    return data.map((e) => SkillModel.fromMap(e)).toList();
  }

  Future<int> deleteSkill(SkillModel skillModel) async {
    int count = await database!
        .delete(skillsTabelName, where: 'id=?', whereArgs: [skillModel.id]);
    return count;
  }

  Future<int> insertNewObjective(ObjectiveModel objectiveModel) async {
    int i = await database!.insert(objectivesTabelName, objectiveModel.toMap());
    return i;
  }

  Future<List<ObjectiveModel>> getAllObjectivess() async {
    List<Map<String, dynamic>> data =
        await database!.query(objectivesTabelName);
    return data.map((e) => ObjectiveModel.fromMap(e)).toList();
  }

  Future<int> deleteObjective(ObjectiveModel objectiveModel) async {
    int count = await database!.delete(objectivesTabelName,
        where: 'id=?', whereArgs: [objectiveModel.id]);
    return count;
  }
  // Future<int> updateObjective(SkillModel skillModel){};

}
