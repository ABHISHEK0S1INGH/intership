import 'package:flutter/material.dart';
import 'package:recb/widgets/drawer.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Internship Tracker RECB',style: TextStyle(color: Colors.grey),
          ),
        ),
        drawer:const MyDrawer(),
        body: SafeArea(
          child: Container(
              color: Colors.blueAccent,
              child: const Text('Home page ')
          ),
        ),
      ),

    );
  }
}
