import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/personal_details_provider.dart';
import 'package:provider/provider.dart';

import '../widgets/personal_details_test.dart';

class PersonalResume extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: const Text('hello')
        /* Consumer<PersonalDetailsProvider>(builder: (context, provider2, child) {
      return SingleChildScrollView(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: provider2.allPersonalDetails.length,
                  itemBuilder: ((context, index) {
                    return PersonalDetailTest(
                        provider2.allPersonalDetails[index]);
                  })),
            ),
          ],
        ),
      );
    })*/
        );
    /*  return Scaffold(body:
        Consumer<PersonalDetailsProvider>(builder: (context, provider2, child) {
      return SingleChildScrollView(
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: provider2.allPersonalDetails.length,
            itemBuilder: ((context, index) {
              return PersonalDetailTest(provider2.allPersonalDetails[index]);
            })),
      );
    }));*/
  }
}
