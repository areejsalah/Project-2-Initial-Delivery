import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/api/pdf_api.dart';
import 'package:flutter_application_1/provider/skill_provider.dart';
import 'package:provider/provider.dart';

import '../api/pdf_resume_api.dart';
import '../models/skill_model.dart';

class PdfPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('my resume')),
      body: ElevatedButton(
        child: const Text('create resume'),
        onPressed: () async {
          SkillModel skillModel = SkillModel(title: 'Flutter');
          final pdfFile = await PdfResumeApi.generate(skillModel);

          PdfApi.openFile(pdfFile);
          /* var pdf;
            List<SkillModel> skillModels = [];
            Consumer<SkillProvider>(
              builder: (context, provider, child) {
                
                
                  
                }
              },
            );
            PdfApi.openFile(pdf); */
        },
      ),
    );
  }
}
