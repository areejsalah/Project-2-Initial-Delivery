import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/additional_sections_screen.dart';
import 'package:flutter_application_1/screens/education.dart';
import 'package:flutter_application_1/screens/experience_screen.dart';
import 'package:flutter_application_1/screens/objectives_screen.dart';
import 'package:flutter_application_1/screens/personal_details.dart';
import 'package:flutter_application_1/screens/project_screen.dart';
import 'package:flutter_application_1/screens/reference_screen.dart';
import 'package:flutter_application_1/screens/skills_screen.dart';

import 'package:flutter_application_1/ui/section_view.dart';

import '../ui/additional_section.dart';

class SectionsScreen extends StatelessWidget {
  const SectionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: /*PreferredSize(
          preferredSize: const Size.fromHeight(150),
          child: */
            AppBar(
          bottomOpacity: 0.0,
          elevation: 0.0,
          title: const Text('Profile'),
        ),
        //),
        body: Container(
          padding: const EdgeInsets.only(top: 55),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: FractionalOffset(1, 0),
            end: FractionalOffset(1, 1),
            stops: [0.0, 0.5],
            tileMode: TileMode.clamp,
            //stops: [0.5, 0.5],
            // begin: Alignment.topCenter,
            // end: Alignment.center,
            colors: [Color(0xFF00838F), Color(0xFFECEFF1)],
          )),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const PersonalDetials();
                      }));
                    },
                    child: SectionView(Icons.person, 'Personal Details'),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const EducationScreen();
                      }));
                    },
                    child: SectionView(Icons.school, 'Education'),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const ExperienceScreen();
                      }));
                    },
                    child: SectionView(Icons.person_add_alt, 'Experience'),
                  )
                ]),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const SkillsScreen();
                        }));
                      },
                      child: SectionView(Icons.person, 'Skills'),
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const ObjectivesScree();
                          }));
                        },
                        child: SectionView(Icons.school, 'Objectives')),
                    InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const ReferenceScreen();
                          }));
                        },
                        child: SectionView(Icons.people, 'Reference')),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'More Section',
                    style: TextStyle(color: Colors.red, fontSize: 25),
                  ),
                ),
                Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const ProjectScreen();
                          }));
                        },
                        child: AdditionalSection(Icons.source, 'projects')),
                    InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return AdditionalSectionsScreen();
                          }));
                        },
                        child: AdditionalSection(Icons.add, 'Add more parts')),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
