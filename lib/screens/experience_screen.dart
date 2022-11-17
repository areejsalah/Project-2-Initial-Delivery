import 'package:flutter/material.dart';

import '../ui/text_field.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: const Text('Add'),
          icon: const Icon(Icons.add),
        ),
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
            title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text('Experience'),
            Icon(
              Icons.check,
              color: Colors.white,
              size: 40,
            )
          ],
        )),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            padding: const EdgeInsets.all(5),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    color: Colors.blueGrey[600],
                  ),
                  padding: const EdgeInsets.all(10),
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
                MyTextField('Company Name'),
                MyTextField('Job Title'),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                      child: SizedBox(
                        width: 156,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'From Date',
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2, color: Colors.black)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                      child: SizedBox(
                        width: 156,
                        child: TextField(
                          decoration: InputDecoration(
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
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Details',
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        minLines: 6,
                        maxLines: 8,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: Colors.black)),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
