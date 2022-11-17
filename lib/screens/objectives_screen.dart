import 'package:flutter/material.dart';

class ObjectivesScree extends StatelessWidget {
  const ObjectivesScree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: const Text(
            'Select Objective',
            style: TextStyle(fontSize: 20),
          ),
          icon: const Icon(Icons.add),
        ),
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
            title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text('Objective'),
            Icon(
              Icons.check,
              color: Colors.white,
              size: 40,
            )
          ],
        )),
        body: Container(
          padding:
              const EdgeInsets.only(bottom: 20, top: 20, left: 15, right: 15),
          margin: const EdgeInsets.only(left: 10, top: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: SizedBox(
            width: 340,
            child: TextFormField(
              minLines: 2,
              maxLines: 6,
              decoration: InputDecoration(
                labelText: 'Objective',
                labelStyle: TextStyle(color: Colors.grey[700]),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.black)),
              ),
            ),
          ),
        ));
  }
}
