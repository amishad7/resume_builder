import 'package:flutter/material.dart';
import 'package:resume_builder/screens/builder_options.dart';
import 'package:resume_builder/screens/contact_info.dart';
import 'package:resume_builder/screens/home.dart';
import 'package:resume_builder/screens/splashScreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      routes: {
        '/': (context) => const SplashScreen(),
        'home': (context) => const homePage(),
        'builder_options': (context) => const Builder_Options(),
        'Contact_info': (context) => const Contact_info(),
      },
    ),
  );
}
