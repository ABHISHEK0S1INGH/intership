import 'package:flutter/material.dart';
import 'package:recb/pages/myprofilepage.dart';
import 'package:recb/pages/opportunitypage.dart';
import 'package:recb/pages/searchpage.dart';
import 'package:recb/pages/settingpage.dart';
import 'package:recb/widgets/drawer.dart';
class HomePage extends StatefulWidget {
   const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex =0;
  final Screen = [
       const Center(child: Text('home'),),
       const Searchpage(),
       const Opportunitypage(),
       const Settingpage(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text('internship tracker'),
          centerTitle: true,
        ),
        body: Screen [currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.teal,
          unselectedItemColor: Colors.grey,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items:  const <BottomNavigationBarItem>[BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'SEARCH',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.tag_sharp),
              label: 'OPPORTUNITY',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'SETTINGS',
            ),
          ],
        ),
        drawer:const MyDrawer(),
            ),
          );
  }
}





