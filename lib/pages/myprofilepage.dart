import 'package:flutter/material.dart';
class MyProfile extends StatelessWidget {
 const MyProfile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.teal,elevation: 0.0,
          centerTitle: true,
          title: const Center(
            child: Text('User Profile',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.cyan
            ),
            ),
          ),
          actions: [
            TextButton(onPressed: (){Navigator.pop(context);}, child: Icon(Icons.arrow_back,),)
          ],
        ),
    body: ListView(
      children: [
        Container(
          height: 250,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.teal,Colors.deepOrange.shade300])
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.teal.shade300,
                    minRadius: 35.0,
                    child: Icon(
                      Icons.phone,
                    ),
                    ),
                  CircleAvatar(
                    backgroundColor: Colors.teal.shade300,
                    minRadius: 25.0,
                    maxRadius: 50.0,
                    child: Icon(
                      Icons.person_rounded,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.teal.shade300,
                    minRadius: 35.0,
                    child: const Icon(
                      Icons.message,
                    ),
                  ),


                ],
              ),
              const SizedBox(
                height: 10.0,

              ),
              Text('STUDENT NAME',style: TextStyle(fontWeight: FontWeight.bold
                  ,fontSize: 35
                  ,color: Colors.white),),
              SizedBox(
                height: 10,
              ),
              Text('STUDENT BRANCH',style: TextStyle(fontWeight: FontWeight.bold
                  ,fontSize: 20
                  ,color: Colors.white),
              ),
            ],

          ),
        ),
        Container(
          child: Row(
            children: [
              Expanded(child: Container(
                color: Colors.deepOrange.shade200,
                child: const ListTile(
                  title: Text('999',textAlign: TextAlign.center,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                     subtitle: Text('Followers',textAlign: TextAlign.center,style: TextStyle(
                       fontWeight: FontWeight.bold,fontSize: 18.0
                     ),),
                ),

              )),
              Expanded(child: Container(
                color: Colors.deepOrange.shade200,
                child: const ListTile(
                  title: Text('999',textAlign: TextAlign.center,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  subtitle: Text('Following',textAlign: TextAlign.center,style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 18.0
                  ),),
                ),

              )),
            ],
          ),

        ),
        Container(
          child: Column(children: const [
            ListTile(
              title: Text('Email',style: TextStyle(color: Colors.deepOrange,fontSize:20,fontWeight: FontWeight.bold),),
            subtitle: Text('useremail@recb.ac.in',style:  TextStyle(color: Colors.grey,fontSize:20,fontWeight: FontWeight.bold),),

            ),
            Divider(height: 10,color: Colors.teal,thickness: 0.3,),
            ListTile(
              title: Text('Linkedin',style: TextStyle(color: Colors.deepOrange,fontSize:20,fontWeight: FontWeight.bold),),
              subtitle: Text('www.linkedin.com/useremail@recb.ac.in',style:  TextStyle(color: Colors.grey,fontSize:20,fontWeight: FontWeight.bold),),

            ),
            Divider(height: 10,color: Colors.teal,thickness: 0.3,),

            ListTile(
              title: Text('GitHub',style: TextStyle(color: Colors.deepOrange,fontSize:20,fontWeight: FontWeight.bold),),
              subtitle: Text('www.github.com/useremail@recb.ac.in',style:  TextStyle(color: Colors.grey,fontSize:20,fontWeight: FontWeight.bold),),

            ),
          ],
          ),

        )
      ],

    ),
      ),
    );
  }
}
