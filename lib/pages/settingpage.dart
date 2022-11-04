import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
class Settingpage extends StatefulWidget {
  @override
  State<Settingpage> createState() => _SettingpageState();
}
class _SettingpageState extends State<Settingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     //
      //appBar: AppBar(
        //elevation: 0.0,
       // backgroundColor: Colors.white,
        //centerTitle: true,
       // title: const Text("Settings", style: TextStyle(
         //   fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
       // ),
     // ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(24),
          children: [
            SettingsGroup(
              title: 'GENERAL',
              children: <Widget>[
                buildLogout(),
               // buildDeleteAccount(),
              ],
            ),
          ],
        ),
      ),
    );
  }
 Widget buildLogout() =>
    SimpleSettingsTile(
      title: 'Remove ads',
      subtitle: '',
      leading: IconWidget(icon:Icons.login_outlined,color:Colors.blueAccent),
      onTap: () =>  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        margin: EdgeInsets.only(bottom:20),
        behavior: SnackBarBehavior.floating,
        content: Text("some message"),
      ),),
    );
}


