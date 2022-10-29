import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
 // get width => null;

  @override
  Widget build(BuildContext context) {
   return  Scaffold(
     body: ListView(
      physics:  const ScrollPhysics(
         parent: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics())
     ),
       children:  [
         SizedBox(
           height: 230,
           child: Stack(
             children: [
               Positioned(
                 top:30,
                   left: 20,
                   child: Material(
                     child: Container(
                       height: 180,
                       width: 350,
                       decoration: BoxDecoration(
                         color: Colors.grey,
                         borderRadius: BorderRadius.circular(9.0),
                        // backgroundBlendMode: BlendMode.dst

                       ),
                     ),

               ),),
               Positioned(
                 top:18,
                 left: 17,
                 child: Card(
                 elevation: 10.0,
                 shadowColor: Colors.grey.withOpacity(0.5),
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(15),
                 ),
                 child: Container(
                   height: 200,
                   width: 150,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10.0),
                     image: DecorationImage(
                       fit: BoxFit.fill,
                       image: AssetImage('images/TCS.png'),
                     )
                   ),
                 ),
               ),),
               Positioned(
                   top:45,
                 left: 180,
                 child: SizedBox(
                 height: 150,
                 width: 180,
                 child: Column(
                   children: const [
                     Text('Tata Consultancy Services',style: TextStyle(fontWeight: FontWeight.bold),

                     ),
                     Divider(height: 20.0,color: Colors.white,),
                     Text('Total Student: XXX'),
                    Padding (padding: EdgeInsets.all(6.0)),
                     Text('Duration:')
                   ],
                 ),
               ))
             ],
           ),
         ),
         SizedBox(
           height: 230,
           child: Stack(
             children: [
               Positioned(
                 top:30,
                 left: 20,
                 child: Material(
                   child: Container(
                     height: 180,
                     width: 350,
                     decoration: BoxDecoration(
                       color: Colors.grey,
                       borderRadius: BorderRadius.circular(9.0),
                       // backgroundBlendMode: BlendMode.dst

                     ),
                   ),

                 ),),
               Positioned(
                 top:18,
                 left: 17,
                 child: Card(
                   elevation: 10.0,
                   shadowColor: Colors.grey.withOpacity(0.5),
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(15),
                   ),
                   child: Container(
                     height: 200,
                     width: 150,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10.0),
                         image: DecorationImage(
                           fit: BoxFit.fill,
                           image: AssetImage('images/adobe.png'),
                         )
                     ),
                   ),
                 ),),
               Positioned(
                   top:45,
                   left: 180,
                   child: SizedBox(
                     height: 150,
                     width: 180,
                     child: Column(
                       children: const [
                         Text('Adobe',style: TextStyle(fontWeight: FontWeight.bold),

                         ),
                         Divider(height: 20.0,color: Colors.white,),
                         Text('Total Student: XXX'),
                         Padding (padding: EdgeInsets.all(6.0)),
                         Text('Duration:')
                       ],
                     ),
                   ))
             ],
           ),
         ),
         SizedBox(
           height: 230,
           child: Stack(
             children: [
               Positioned(
                 top:30,
                 left: 20,
                 child: Material(
                   child: Container(
                     height: 180,
                     width: 350,
                     decoration: BoxDecoration(
                       color: Colors.grey,
                       borderRadius: BorderRadius.circular(9.0),
                       // backgroundBlendMode: BlendMode.dst

                     ),
                   ),

                 ),),
               Positioned(
                 top:18,
                 left: 17,
                 child: Card(
                   elevation: 10.0,
                   shadowColor: Colors.grey.withOpacity(0.5),
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(15),
                   ),
                   child: Container(
                     height: 200,
                     width: 150,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10.0),
                         image: DecorationImage(
                           fit: BoxFit.fill,
                           image: AssetImage('images/intel.png'),
                         )
                     ),
                   ),
                 ),),
               Positioned(
                   top:45,
                   left: 180,
                   child: SizedBox(
                     height: 150,
                     width: 180,
                     child: Column(
                       children: const [
                         Text('Intel Corporation',style: TextStyle(fontWeight: FontWeight.bold),

                         ),
                         Divider(height: 20.0,color: Colors.white,),
                         Text('Total Student: XXX'),
                         Padding (padding: EdgeInsets.all(6.0)),
                         Text('Duration:')
                       ],
                     ),
                   ))
             ],
           ),
         ),
         SizedBox(
           height: 230,
           child: Stack(
             children: [
               Positioned(
                 top:30,
                 left: 20,
                 child: Material(
                   child: Container(
                     height: 180,
                     width: 350,
                     decoration: BoxDecoration(
                       color: Colors.grey,
                       borderRadius: BorderRadius.circular(9.0),
                       // backgroundBlendMode: BlendMode.dst

                     ),
                   ),

                 ),),
               Positioned(
                 top:18,
                 left: 17,
                 child: Card(
                   elevation: 10.0,
                   shadowColor: Colors.grey.withOpacity(0.5),
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(15),
                   ),
                   child: Container(
                     height: 200,
                     width: 150,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10.0),
                         image: DecorationImage(
                           fit: BoxFit.fill,
                           image: AssetImage('images/Microsoft.jpg'),
                         )
                     ),
                   ),
                 ),),
               Positioned(
                   top:45,
                   left: 180,
                   child: SizedBox(
                     height: 150,
                     width: 180,
                     child: Column(
                       children: const [
                         Text('Microsoft',style: TextStyle(fontWeight: FontWeight.bold),

                         ),
                         Divider(height: 20.0,color: Colors.white,),
                         Text('Total Student: XXX'),
                         Padding (padding: EdgeInsets.all(6.0)),
                         Text('Duration:')
                       ],
                     ),
                   ))
             ],
           ),
         ),
         SizedBox(
           height: 230,
           child: Stack(
             children: [
               Positioned(
                 top:30,
                 left: 20,
                 child: Material(
                   child: Container(
                     height: 180,
                     width: 350,
                     decoration: BoxDecoration(
                       color: Colors.grey,
                       borderRadius: BorderRadius.circular(9.0),
                       // backgroundBlendMode: BlendMode.dst

                     ),
                   ),

                 ),),
               Positioned(
                 top:18,
                 left: 17,
                 child: Card(
                   elevation: 10.0,
                   shadowColor: Colors.grey.withOpacity(0.5),
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(15),
                   ),
                   child: Container(
                     height: 200,
                     width: 150,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10.0),
                         image: DecorationImage(
                           fit: BoxFit.fill,
                           image: AssetImage('images/wipro.jpg'),
                         )
                     ),
                   ),
                 ),),
               Positioned(
                   top:45,
                   left: 180,
                   child: SizedBox(
                     height: 150,
                     width: 180,
                     child: Column(
                       children: const [
                         Text('Wipro private limited',style: TextStyle(fontWeight: FontWeight.bold),

                         ),
                         Divider(height: 20.0,color: Colors.white,),
                         Text('Total Student: XXX'),
                         Padding (padding: EdgeInsets.all(6.0)),
                         Text('Duration:')
                       ],
                     ),
                   ))
             ],
           ),
         ),
         SizedBox(

           height: 230,
           child: Stack(
             children: [
               Positioned(
                 top:30,
                 left: 20,
                 child: Material(
                   child: Container(
                     height: 180,
                     width: 350,
                     decoration: BoxDecoration(
                       color: Colors.grey,
                       borderRadius: BorderRadius.circular(9.0),
                       // backgroundBlendMode: BlendMode.dst

                     ),
                   ),

                 ),),
               Positioned(
                 top:18,
                 left: 17,
                 child: Card(
                   elevation: 10.0,
                   shadowColor: Colors.grey.withOpacity(0.5),
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(15),
                   ),
                   child: Container(
                     height: 200,
                     width: 150,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10.0),
                         image: DecorationImage(
                           fit: BoxFit.fill,
                           image: AssetImage('images/wipro.jpg'),
                         )
                     ),
                   ),
                 ),),
               Positioned(
                   top:45,
                   left: 180,
                   child: SizedBox(
                     height: 150,
                     width: 180,
                     child: Column(
                       children: const [
                         Text('Wipro private limited',style: TextStyle(fontWeight: FontWeight.bold),

                         ),
                         Divider(height: 20.0,color: Colors.white,),
                         Text('Total Student: XXX'),
                         Padding (padding: EdgeInsets.all(6.0)),
                         Text('Duration:')
                       ],
                     ),
                   ))
             ],
           ),
         ),
       ],
     ),

   );

  }
}
