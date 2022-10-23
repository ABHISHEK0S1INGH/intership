import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Updateprofile extends StatefulWidget {
  const Updateprofile({Key? key}) : super(key: key);

  @override
  State<Updateprofile> createState() => _UpdateprofileState();
}

class _UpdateprofileState extends State<Updateprofile> {
 //  PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: ListView(
          physics:  ScrollPhysics(
              parent: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics())
          ),
          children: <Widget> [
            nameTextField(),
            const SizedBox(
             height: 20,
           ),
            companyTextField(),
             const SizedBox(
              height: 20,
            ),
            durationTextField(),
            const SizedBox(
              height: 20,
            ),
            technologyTextField(),
             const SizedBox(
              height: 20,
            ),
            locationTextField(),
             const SizedBox(
              height: 20,
            ),
            typeTextField(),
            const SizedBox(
              height: 20,
            ),
            imageProfile(),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget nameTextField(){
    return TextFormField(
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.teal,
          ),
        ),
          hintText: ('Name'),
         icon: Icon(Icons.person,color: Colors.teal,),
      ),
    );
  }

  Widget companyTextField() {
    return TextFormField(
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.teal,
          ),
        ),
        hintText: ('Company Name'),
        icon: Icon(Icons.location_city_outlined, color: Colors.teal),
      ),
    );
  }

  Widget durationTextField() {
    return TextFormField(
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.teal,
          ),
        ),
        hintText: ('Duration'),
        icon: Icon(Icons.access_time, color: Colors.teal),
      ),
    );
  }

  Widget technologyTextField() {
    return TextFormField(
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.teal,
          ),
        ),
        hintText: ('Tecnology Covered'),
        icon: Icon(Icons.military_tech_sharp, color: Colors.teal),
      ),
    );
  }
  Widget locationTextField() {
    return TextFormField(
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.teal,
          ),
        ),
        hintText: ('Internship Location'),
        icon: Icon(Icons.gps_fixed_sharp, color: Colors.teal),
      ),
    );
  }
  Widget typeTextField() {
    return TextFormField(
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.teal,
          ),
        ),
        hintText: ('Internship Type'),
        icon: Icon(Icons.info, color: Colors.teal),
      ),
    );
  }
  Widget imageProfile(){
    return Stack(
      children:<Widget>[ Container(
        padding: const EdgeInsets.all(32),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Divider(color: Colors.teal,),
              const Text(('Upload Certificate'),style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 20.0,color: Colors.teal),),
              const Padding(padding: EdgeInsets.all(10.0)),
              const Image(image:
              AssetImage("images/rec.jpeg"),

              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              IconButton(onPressed: (){
                showModalBottomSheet(context: context, builder:((builder) => bottomsheet()),
                );
              },
                icon:  const Icon(Icons.upload),iconSize: 50.0,)
            ],
          ),
        ),
      ),
    ]
    );
  }
  Widget bottomsheet(){
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: <Widget>[
          const Text('Select file',style: TextStyle(fontSize:20.0),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: [
                  IconButton(onPressed:(){
                   // takephoto(ImageSource.camera);
                  }, icon: const Icon(Icons.camera)),
                  const Text('Camera'),
                ],
              ),
              Row(
                children: [
                  IconButton(onPressed:(){
                  //  takephoto(ImageSource.gallery);
                  }, icon: const Icon(Icons.browse_gallery)),
                  const Text('Files'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
//void takephoto(ImageSource source ) async {
 //   final pickedFile = await _picker.getImage(
   //   source: source,
    //);
 //   setState(() {
   //   _imageFile = pickedFile;
  //  });
//}


}












