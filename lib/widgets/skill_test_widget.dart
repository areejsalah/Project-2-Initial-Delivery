import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/skill_model.dart';

class SkillTestWidget extends StatelessWidget {
  SkillModel skillModel;
  SkillTestWidget(this.skillModel);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        color: Colors.grey[100],
        child: Column(children: [
          Text(
            skillModel.title!,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ]));
  }
}
