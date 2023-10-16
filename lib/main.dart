import 'package:flutter/material.dart';
import 'package:resume_builder/screens/Carrier_objective.dart';
import 'package:resume_builder/screens/Eduction.dart';
import 'package:resume_builder/screens/Personal_Details.dart';
import 'package:resume_builder/screens/Techincal_Skills.dart';
import 'package:resume_builder/screens/builder_options.dart';
import 'package:resume_builder/screens/contact_info.dart';
import 'package:resume_builder/screens/home.dart';
import 'package:resume_builder/screens/splashScreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const SplashScreen(),
        'home': (context) => const homePage(),
        'builder_options': (context) => const Builder_Options(),
        'Contact_info': (context) => const Contact_info(),
        'Personal_Details': (context) => const Personal_Details(),
        'Technical_Skills': (context) => const Technical_skills(),
        'Carrier_Objective': (context) => const Carrier_Objective(),
        'Eduction_': (context) => const Eduction_(),
        'Eduction_': (context) => const Experience_(),
      },
    ),
  );
}
