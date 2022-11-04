import 'package:flutter/material.dart';
import 'package:recb/pages/homepage.dart';
class Wipropage extends StatefulWidget {
  const Wipropage({Key? key}) : super(key: key);

  @override
  State<Wipropage> createState() => _WipropageState();
}

class _WipropageState extends State<Wipropage> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Material(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.tealAccent.shade400,
            elevation: 0.0,
            title: Text('Company OverView',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
          ),
          body: Container(
            color: Colors.tealAccent.shade400,
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(15)),
                Center(child: Image(image:AssetImage('images/wipro.jpg'),height: 200),
                ),
                Padding(padding: EdgeInsets.all(15)),
                Text("Wipro Corporation ",style: TextStyle(fontWeight: FontWeight.bold,fontSize:30,
                ),
                ),
                Divider(height: 20,color: Colors.brown,thickness:.9,indent: 19,endIndent: 19,),
                ListTile(
                  title: Text("Total Student:",style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text("in Number"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
