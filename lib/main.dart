import 'package:flutter/material.dart';
import 'package:quiz_application_ui_2/pages/homepage.dart';
import 'package:quiz_application_ui_2/pages/intro_page.dart';
import 'package:quiz_application_ui_2/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QUIZZY',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,  // Remove the debug banner
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/intro': (context) => const IntroPage(),
        '/homepage': (context) => const HomePage(),
      },
    );
  }
}
