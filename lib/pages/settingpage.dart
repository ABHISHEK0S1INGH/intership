
import 'package:flutter/material.dart';
class Settingpage extends StatefulWidget {
  const Settingpage({Key? key}) : super(key: key);

  @override
  State<Settingpage> createState() => _SettingpageState();
}

class _SettingpageState extends State<Settingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title:const Text("Settings",style:TextStyle(
            fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black),
      ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child:ListView(
          children: [
             SizedBox(
              height: 40,
            ),
            Row(
              children: const [
                Icon(Icons.person,color: Colors.teal,),

               SizedBox(width: 10),
                Text('Account',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)

              ],
            ),
            Divider(height: 17,thickness: 1,),
            SizedBox(width: 10,),
            buildAccountOption(context,"Change password"),
            buildAccountOption(context,"Persnalization"),
            buildAccountOption(context,"Social Link"),
            buildAccountOption(context,"Language"),
            buildAccountOption(context,"Privacy Policy"),
          ],
        ),
      ),
    );
  }
  GestureDetector buildAccountOption(BuildContext context, String title){
    return GestureDetector(
      onTap:  () {
    },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8,horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey),),
            Icon(Icons.arrow_forward_ios,color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
