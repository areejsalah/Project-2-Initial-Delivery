import 'dart:developer';

import 'package:flutter/material.dart';

import '../widgets/reference_widget.dart';

class ReferenceScreen extends StatefulWidget {
  const ReferenceScreen({super.key});

  @override
  State<ReferenceScreen> createState() => _ReferenceScreenState();
}

class _ReferenceScreenState extends State<ReferenceScreen> {
  int count = 1;
  List<ReferenceWidget> referencesWidgets = [];
  void addNewReference() {
    setState(() {
      referencesWidgets.add(ReferenceWidget());
      count++;
      log(referencesWidgets.length.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    referencesWidgets = List.generate(count, (index) => ReferenceWidget());
    return Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          onPressed: addNewReference,
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
        body: ListView.builder(
            itemCount: referencesWidgets.length,
            itemBuilder: (context, index) {
              return referencesWidgets[index];
            }));
  }
}
