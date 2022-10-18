import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});


  @override
  Widget build(BuildContext context) {
    const imageUrl = "https://i.pinimg.com/474x/b5/8e/0d/b58e0de519e4b64817e353f683b5dfc2--birds--cute-birds.jpg";
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(
          children:  const [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName:Text("USER"
              ),
              accountEmail:Text(('USER EMAIL'),
              ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage:NetworkImage(imageUrl),
                ),
              ),
              ),
            ListTile(
              leading: Icon(CupertinoIcons.home,color: Colors.white),
              title: Text('HOME',textScaleFactor: 1.2,style: TextStyle(color: Colors.white,
              ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,color: Colors.white),
              title: Text('MY PROFILE',textScaleFactor: 1.2,style: TextStyle(color: Colors.white,
              ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.dot_radiowaves_left_right,color: Colors.white),
              title: Text('DISCOVER',textScaleFactor: 1.2,style: TextStyle(color: Colors.white,
              ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.add_circled,color: Colors.white),
              title: Text('UPDATE INTERNSHIP STATUS',textScaleFactor: 1.2,style: TextStyle(color: Colors.white,
              ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.settings_solid,color: Colors.white),
              title: Text('SETTINGS',textScaleFactor: 1.2,style: TextStyle(color: Colors.white,
              ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.scope,color: Colors.white),
              title: Text('NEW OPPORTUNITY',textScaleFactor: 1.2,style: TextStyle(color: Colors.white,
              ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.info,color: Colors.white),
              title: Text('ABOUT',textScaleFactor: 1.2,style: TextStyle(color: Colors.white,
              ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.question,color: Colors.white),
              title: Text('HELP',textScaleFactor: 1.2,style: TextStyle(color: Colors.white,
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}