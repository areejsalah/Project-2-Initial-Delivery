import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/models/personal_details_model.dart';

import '../data/db_helper.dart';

class PersonalDetailsProvider extends ChangeNotifier {
  static TextEditingController nameController = TextEditingController();
  static TextEditingController addressController = TextEditingController();
  static TextEditingController emailController = TextEditingController();
  static TextEditingController phoneController = TextEditingController();
  static TextEditingController dateOfBirthController = TextEditingController();
  static TextEditingController websiteController = TextEditingController();
  static TextEditingController linkedInController = TextEditingController();
  // static String? photo;
  // static TextEditingController phoneController = TextEditingController();

  PersonalDetailsProvider() {
    getAllPersonalDetails();
  }

  List<PersonalDetailsModel> allPersonalDetails = [];

  getAllPersonalDetails() async {
    allPersonalDetails = await DbHelper.dbHelper.getPersonalDetailss();
    notifyListeners();
    // log(getAllPersonalDetails().length);
  }

  insertNewPersonalDetails() {
    PersonalDetailsModel personalDetailsModel = PersonalDetailsModel(
      name: nameController.text,
      address: addressController.text,
      email: emailController.text,
      phone: phoneController.text,
      dateOfBirth: dateOfBirthController.text,
      website: websiteController.text,
      linkedIn: linkedInController.text,
      //image: DbHelper.dbHelper.savePhoto(photo!) as String,
    );

    DbHelper.dbHelper.insertNewPersonalDetials(personalDetailsModel);
    getAllPersonalDetails();
  }
}
