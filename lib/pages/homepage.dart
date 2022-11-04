import 'package:flutter/material.dart';
import 'package:recb/pages/collegewebsitepage.dart';
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

      home: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title:Text('Internship Tracker',
            style: GoogleFonts.lato(
              textStyle: const TextStyle(color: Colors.teal,
                  letterSpacing: .9,
                  fontWeight: FontWeight.bold),
            ),
          ),
          leading:
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const MyProfile();
              }),);
            },
            child: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.grey.shade200,
                child: const CircleAvatar(
                  radius: 10,
                  backgroundImage: AssetImage('images/profile photo.jpg'),
                )
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const CollegWebsite();
                }),);
              },
              child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.grey.shade200,
                  child: const CircleAvatar(
                    radius: 10,
                    backgroundImage: AssetImage('images/recblogo.jpg'),
                  )
              ),
            ),
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





