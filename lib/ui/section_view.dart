import 'package:flutter/material.dart';

class SectionView extends StatelessWidget {
  final icon;
  String sectionName;

  SectionView(this.icon, this.sectionName);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 16, left: 10),
        child: ConstrainedBox(
          constraints: const BoxConstraints.expand(width: 110, height: 110),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
              boxShadow: kElevationToShadow[2],
            ),
            child: Container(
              padding: const EdgeInsets.only(top: 15),
              child: Column(
                children: [
                  Icon(
                    icon,
                    color: Colors.cyan[800],
                    size: 30,
                  ),
                  Text(sectionName,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      )
                      //fontWeight: FontWeight.bold),
                      ),
                ],
              ),
            ),
          ),
        ));
  }
}
