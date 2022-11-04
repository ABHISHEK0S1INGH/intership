import 'package:flutter/material.dart';
import 'package:recb/pages/homepage.dart';
class TcsPage extends StatefulWidget {
  const TcsPage({Key? key}) : super(key: key);
  @override
  State<TcsPage> createState() => _TcsPageState();
}
class _TcsPageState extends State<TcsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                Center(child: Image(image:AssetImage('images/TCS.png'),height: 200),
                ),
             Padding(padding: EdgeInsets.all(15)),
                Text("Tata Consultancy Services",style: TextStyle(fontWeight: FontWeight.bold,fontSize:30,
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
