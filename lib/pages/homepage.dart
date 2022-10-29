import 'package:flutter/material.dart';
import 'package:recb/pages/myprofilepage.dart';
import 'package:recb/pages/opportunitypage.dart';
import 'package:recb/pages/searchpage.dart';
import 'package:recb/pages/settingpage.dart';
import 'package:recb/pages/updateprofilepage.dart';
import 'package:recb/pages/dashborad.dart';
import 'package:google_fonts/google_fonts.dart';


class HomePage extends StatefulWidget {
   const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex =0;
  final Screen = [
       const DashBoard(),
       const Searchpage(),
       const Updateprofile(),
       const Opportunitypage(),
       const Settingpage(),
                 ];
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      color: Colors.white,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white38,
          shadowColor: Colors.red,
          elevation: 0.0,
          title:  Text('Internship Tracker',
            style: GoogleFonts.lato(
              textStyle: const TextStyle(color: Colors.teal,
                  letterSpacing: .9,
                  fontWeight: FontWeight.bold),
                  ),
                   ),
                   centerTitle: true,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Container(
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.teal,
                  //remove this when you add image.
                ),
                child: Container(
                  child: SizedBox(

                    child: IconButton(
                      onPressed: () {
                      const MyProfile();
                      },
                      icon:const ImageIcon(AssetImage('images/rec.jpeg'),
                    ),
                    ),
                  ),
                ),

              ),
            )
          ],
                   ),
        body: Screen [currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.teal,
          unselectedItemColor: Colors.grey,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items:   const <BottomNavigationBarItem>[BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'SEARCH',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box_rounded),
              label: 'UPDATE',
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
        // drawer:const MyDrawer(),
      ),
    );
  }
}





