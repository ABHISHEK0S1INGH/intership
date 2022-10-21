import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});
  @override
  State<MyDrawer> createState() => _MyDrawerState();
}
class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    const imageUrl = "https://i.pinimg.com/474x/b5/8e/0d/b58e0de519e4b64817e353f683b5dfc2--birds--cute-birds.jpg";
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(
          children: [
             const DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                arrowColor: Colors.black,
                accountName:Text("USER"
              ),
              accountEmail:Text(('USER EMAIL'),
              ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage:NetworkImage(imageUrl),
                ),
              ),
              ),
            const ListTile(
              leading: Icon(CupertinoIcons.home,color: Colors.white),
              title: Text('HOME',textScaleFactor: 1.2,style: TextStyle(color: Colors.white,
              ),
              ),
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.dot_radiowaves_left_right,color: Colors.white),
              title: Text('DISCOVER',textScaleFactor: 1.2,style: TextStyle(color: Colors.white,
              ),
              ),
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.add_circled,color: Colors.white),
              title: Text('UPDATE INTERNSHIP STATUS',textScaleFactor: 1.2,style: TextStyle(color: Colors.white,
              ),
              ),
            ),
            ListTile(
              onTap: (){
                Navigator.pushNamed(context,'/setting');
              },
              leading: const Icon(CupertinoIcons.settings_solid,color: Colors.white),
              title: const Text('SETTINGS',textScaleFactor: 1.2,style: TextStyle(color: Colors.white,
              ),
              ),
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.scope,color: Colors.white),
              title: Text('NEW OPPORTUNITY',textScaleFactor: 1.2,style: TextStyle(color: Colors.white,
              ),
              ),
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.info,color: Colors.white),
              title: Text('ABOUT',textScaleFactor: 1.2,style: TextStyle(color: Colors.white,
              ),
              ),
            ),
            const ListTile(
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