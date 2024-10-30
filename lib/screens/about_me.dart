import 'package:unit_6_assignment_segura/components/tab_widget_1.dart';
import 'package:unit_6_assignment_segura/components/tab_widget_2.dart';
import 'package:flutter/material.dart';
import 'package:unit_6_assignment_segura/screens/home_screen.dart';

class About_Me extends StatefulWidget {
  const About_Me({super.key});

  @override
  State<About_Me> createState() => _About_MeState();
}

class _About_MeState extends State<About_Me> {
  @override
  Widget build(BuildContext context) {
    // INSERT CODE HERE!!!!
    // Hint: You need to use the following widgets
    // DefaultTabController, TabBar, Tab and TabBarView
    return Scaffold(
      body: const DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(
              tabs: [
                Tab(icon: Icon(Icons.contacts)),
                Tab(icon: Icon(Icons.settings)),
              ],
            ),
            Expanded(
              child: TabBarView(children: [
                TabWidget1(),
                TabWidget2(),
              ]),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.home),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomScreen(),
              ),
            );
          }),
    );
  }
}
