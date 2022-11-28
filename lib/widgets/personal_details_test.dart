import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/personal_details_model.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class PersonalDetailTest extends StatelessWidget {
  PersonalDetailsModel personalDetailsModel;
  PersonalDetailTest(this.personalDetailsModel);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Text(personalDetailsModel.name!,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          Text(personalDetailsModel.email!,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          Text(personalDetailsModel.phone!,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          Text(personalDetailsModel.website!,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          Text(personalDetailsModel.linkedIn!,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          Text(personalDetailsModel.address!,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          Text(personalDetailsModel.dateOfBirth!,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          /* Container(
            width: 20,
            height: 20,
            child: Image.memory(base64Decode(personalDetailsModel.image ?? ''),
                fit: BoxFit.fill),
          )*/
        ]),
      ),
    );
  }
}
