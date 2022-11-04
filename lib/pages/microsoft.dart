import 'package:flutter/material.dart';
import 'package:recb/pages/homepage.dart';
class MicrosoftPage extends StatefulWidget {
  const MicrosoftPage({Key? key}) : super(key: key);

  @override
  State<MicrosoftPage> createState() => _MicrosoftPageState();
}

class _MicrosoftPageState extends State<MicrosoftPage> {
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
                Center(child: Image(image:AssetImage('images/Microsoft.jpg'),height: 200),
                ),
                Padding(padding: EdgeInsets.all(15)),
                Text("Microsoft",style: TextStyle(fontWeight: FontWeight.bold,fontSize:30,
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
