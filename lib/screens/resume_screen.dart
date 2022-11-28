import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/education_model.dart';
import 'package:flutter_application_1/provider/education_provider.dart';
import 'package:flutter_application_1/provider/objective_provider.dart';
import 'package:flutter_application_1/widgets/education_widget_Test.dart';
import 'package:flutter_application_1/widgets/personal_details_test.dart';
import 'package:flutter_application_1/widgets/skill_test_widget.dart';
import 'package:provider/provider.dart';

import '../provider/personal_details_provider.dart';
import '../provider/skill_provider.dart';
import '../widgets/objective_test_widget.dart';

class ResumeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Consumer<SkillProvider>(builder: (context, provider2, child) {
      return SingleChildScrollView(
          child: Column(children: [
        ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: provider2.allSkills.length,
            itemBuilder: ((context, index) {
              return SkillTestWidget(provider2.allSkills[index]);
            })),
        /* ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: provider2.allPersonalDetails.length,
            itemBuilder: ((context, index) {
              return PersonalDetailTest(provider2.allPersonalDetails[index]);
            })),*/
      ]));
    }));
    /*body: Consumer3<EducationProvider, SkillProvider, ObjectiveProvider>(
          builder: (context, provider1, provider2, provider3, child) {
        return SingleChildScrollView(
          child: Column(children: [
            ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: provider1.allEducations.length,
                itemBuilder: ((context, index) {
                  return EducationWidgetTest(provider1.allEducations[index]);
                })),
            ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: provider2.allSkills.length,
                itemBuilder: ((context, index) {
                  return SkillTestWidget(provider2.allSkills[index]);
                })),
            ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: provider3.allObjectives.length,
                itemBuilder: ((context, index) {
                  return ObjectiveTestWidget(provider3.allObjectives[index]);
                }))
          ]),
        );
      }),
    );*/
  }
}
