import 'package:flutter/material.dart';

class AdditionalSection extends StatelessWidget {
  final icon;
  String sectionName;
  AdditionalSection(this.icon, this.sectionName);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 16, left: 10),
        child: ConstrainedBox(
          constraints: BoxConstraints.expand(width: 110, height: 110),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
              boxShadow: kElevationToShadow[2],
            ),
            child: Container(
              padding: const EdgeInsets.only(top: 5),
              child: Column(
                children: [
                  Icon(
                    icon,
                    size: 30,
                    color: Colors.grey[800],
                  ),
                  Text(sectionName,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[800],
                      )
                      //fontWeight: FontWeight.bold),
                      )
                ],
              ),
            ),
          ),
        ));
  }
}
