import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../ui/text_field.dart';

class ReferenceScreen extends StatelessWidget {
  const ReferenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: const Text('Add'),
          icon: const Icon(Icons.add),
        ),
        appBar: AppBar(
            title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text('Reference'),
            Icon(
              Icons.check,
              color: Colors.white,
              size: 40,
            )
          ],
        )),
        body: Container(
          height: 450,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          margin: const EdgeInsets.all(20),
          child: SingleChildScrollView(
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
                  child: Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Refrence 1',
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
                MyTextField('Reference Name'),
                MyTextField('Job Title'),
                MyTextField('Company Name'),
                MyTextField('Email'),
                MyTextField('Phone'),
              ],
            ),
          ),
        ));
  }
}
