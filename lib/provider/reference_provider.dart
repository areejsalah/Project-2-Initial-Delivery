import 'package:flutter/cupertino.dart';

class ReferenceProvider extends ChangeNotifier {
  static TextEditingController referenceNameController =
      TextEditingController();
  static TextEditingController jobTitleController = TextEditingController();
  static TextEditingController companyNameController = TextEditingController();
  static TextEditingController emailController = TextEditingController();
  static TextEditingController phoneController = TextEditingController();
}
