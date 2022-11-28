import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/db_helper.dart';
import 'package:flutter_application_1/models/objective_model.dart';
import 'package:flutter_application_1/provider/education_provider.dart';
import 'package:flutter_application_1/provider/objective_provider.dart';
import 'package:flutter_application_1/provider/personal_details_provider.dart';
import 'package:flutter_application_1/provider/skill_provider.dart';
import 'package:flutter_application_1/router/app_router.dart';
import 'package:flutter_application_1/screens/objectives_screen.dart';
import 'package:flutter_application_1/screens/sections_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DbHelper.dbHelper.initiateDataBase();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider<EducationProvider>(
        create: (context) {
          return EducationProvider();
        },
      ),
      ChangeNotifierProvider<SkillProvider>(
        create: (_) => SkillProvider(),
      ),
      ChangeNotifierProvider<ObjectiveProvider>(
        create: (_) => ObjectiveProvider(),
      ),
      ChangeNotifierProvider<PersonalDetailsProvider>(
        create: (_) => PersonalDetailsProvider(),
      ),
    ], child: AppInit());
  }
}

class AppInit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // navigatorKey: AppRouter.globalKey,
      //routes: {
      //'objectiveScreen': (context) => ObjectivesScreen(

      //  (ModalRoute.of(context)!.settings.arguments) as ObjectiveModel),

      // },
      theme: ThemeData(
          inputDecorationTheme: InputDecorationTheme(
            labelStyle: TextStyle(
              color: (Colors.grey[700])!,
              fontSize: 16,
            ),
            floatingLabelStyle: TextStyle(color: (Colors.cyan[900])!),
          ),
          scaffoldBackgroundColor: (Colors.grey[400]),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.cyan[800],
            foregroundColor: Colors.white,
          ),
          appBarTheme: AppBarTheme(
              textTheme: const TextTheme(
                  headline1:
                      TextStyle(fontSize: 70, fontWeight: FontWeight.bold)),
              backgroundColor: Colors.cyan[800],
              foregroundColor: Colors.white)),
      home: const SectionsScreen(),
    );
  }
}
