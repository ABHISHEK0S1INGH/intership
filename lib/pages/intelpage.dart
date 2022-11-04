import 'package:flutter/material.dart';
import 'package:recb/pages/homepage.dart';
class IntelPage extends StatefulWidget {
  const IntelPage({Key? key}) : super(key: key);
  @override
  State<IntelPage> createState() => _IntelPageState();
}

class _IntelPageState extends State<IntelPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Scaffold(
          appBar: AppBar(

            backgroundColor: Colors.tealAccent.shade400,
            elevation: 0.0,
            title: const Text('Company OverView',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),

          ),
          body: Container(
            color: Colors.tealAccent.shade400,
            child: Column(
              children: [
                const Padding(padding: EdgeInsets.all(15)),
                const Center(child: Image(image:AssetImage('images/intel.png'),height: 200),
                ),
                const Padding(padding: EdgeInsets.all(15)),
                const Text("Intel Corporation",style: TextStyle(fontWeight: FontWeight.bold,fontSize:30,
                ),
                ),
                const Divider(height: 20,color: Colors.brown,thickness:.9,indent: 19,endIndent: 19,),
                const ListTile(
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
