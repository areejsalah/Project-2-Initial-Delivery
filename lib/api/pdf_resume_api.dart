import 'dart:io';

import 'package:flutter_application_1/api/pdf_api.dart';

import '../models/skill_model.dart';
import 'package:pdf/widgets.dart';

class PdfResumeApi {
  SkillModel skillModel;
  PdfResumeApi(this.skillModel);
  static Future<File> generate(skillModel) async {
    final pdf = Document();
    pdf.addPage(MultiPage(build: ((context) => [buildSkill(skillModel)])));
    return PdfApi.saveDocument(name: 'resume.pdf', pdf: pdf);
  }

  static Widget buildSkill(SkillModel skillModel) {
    return Container(
        child: Text('${skillModel.title}', style: TextStyle(fontSize: 24)));
  }
}
