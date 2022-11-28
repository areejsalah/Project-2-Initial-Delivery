import 'package:flutter/material.dart';

import '../components/custom_text_field.dart';
import '../provider/experience_provider.dart';

class ExperienceWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
            height: 450,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            margin: const EdgeInsets.all(20),
            child: Column(children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  color: Colors.blueGrey[600],
                ),
                padding: const EdgeInsets.all(10),
                child: Container(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Experience 1',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Icon(
                        Icons.delete,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              CustomTextField(
                  'Company Name', ExperienceProvider.companyNameController),
              CustomTextField(
                  'Job Title', ExperienceProvider.jobTitleController),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  color: Colors.blueGrey[600],
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: SizedBox(
                      width: 155,
                      child: TextFormField(
                        controller: ExperienceProvider.startDateController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'From Date',
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: Colors.black)),
                        ),
                      ),
                    ),
                  ),
                  //),
                  const SizedBox(
                    width: 5,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    child: SizedBox(
                      width: 155,
                      child: TextFormField(
                        controller: ExperienceProvider.endDateController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'To Date',
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 3, color: Colors.black)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 340,
                child: Container(
                  margin: const EdgeInsets.only(left: 7, right: 7),
                  child: Column(children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Details',
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                        controller: ExperienceProvider.detailsController,
                        minLines: 4,
                        maxLines: 6,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: Colors.black)),
                        )),
                  ]),
                ),
              )
            ])));
  }
}
