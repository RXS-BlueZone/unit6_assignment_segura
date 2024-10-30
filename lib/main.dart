import 'package:flutter/material.dart';
import 'package:unit_6_assignment_segura/screens/about_me.dart';
import 'package:unit_6_assignment_segura/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 23, 138, 86)),
        ),
        // Create the routes here
        initialRoute: '/',
        routes: {
          '/': (context) => const HomScreen(),
          '/screens': (context) => const About_Me(),
        });
  }
}
