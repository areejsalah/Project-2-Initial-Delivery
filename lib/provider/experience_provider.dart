import 'package:flutter/cupertino.dart';

class ExperienceProvider extends ChangeNotifier {
  static TextEditingController companyNameController = TextEditingController();
  static TextEditingController jobTitleController = TextEditingController();
  static TextEditingController startDateController = TextEditingController();
  static TextEditingController endDateController = TextEditingController();
  static TextEditingController detailsController = TextEditingController();
}
