import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:recb/pages/homepage.dart';


class Updateprofile extends StatefulWidget {
  const Updateprofile({Key? key}) : super(key: key);

  @override
  State<Updateprofile> createState() => _UpdateprofileState();
}

class _UpdateprofileState extends State<Updateprofile> {
 //  PickedFile _imageFile;
  PlatformFile? pickedFile;
  Future selectFile() async {
    final result = await FilePicker.platform.pickFiles();
  }

  final ImagePicker _picker = ImagePicker();
  final controller = TextEditingController();
  final controllerAge = TextEditingController();
  final controllerdate = TextEditingController();
  final controllertecnology = TextEditingController();
  final controllerlocation = TextEditingController();
  final controllertype = TextEditingController();

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: ListView(
          physics:  const ScrollPhysics(
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
            Update(),
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
      validator: (value) {
        if (value!.isEmpty) {
          return "can't be empty ";
        }
        return null;
      },
      controller: controller,
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
      validator: (value) {
        if (value!.isEmpty) {
          return "can't be empty ";
        }
        return null;
      },

      controller: controllerAge,
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
      validator: (value) {
        if (value!.isEmpty) {
          return "can't be empty ";
        }
        return null;
      },
      controller: controllerdate,
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
      validator: (value) {
        if (value!.isEmpty) {
          return "can't be empty ";
        }
        return null;
      },
      controller: controllertecnology,
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
      validator: (value) {
        if (value!.isEmpty) {
          return "can't be empty ";
        }
        return null;
      },
      controller: controllerlocation,
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
      obscureText: true,
      validator: (value) {
        if (value!.isEmpty) {
          return "can't be empty ";
        }
        return null;
      },
      controller: controllertype,
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
    return Container(
      padding: const EdgeInsets.all(32),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (pickedFile != null)
              Expanded(
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.black,
                  child: Image.file(File(pickedFile!.path!),
                    width: double.infinity,
                    fit: BoxFit.cover,),
                ),
              ),
          const Divider(color: Colors.teal,),
            const Text(('Upload Certificate'),style: TextStyle(fontWeight: FontWeight.bold,
               fontSize: 20.0,color: Colors.teal),),
            SizedBox(height: 32),
            IconButton(onPressed:  selectFile,
              icon:  const Icon(Icons.upload),iconSize: 50.0,),
            const Text("Tap The Icon To Upload File"),
          ],
        ),
      ),
    );
  }
  Widget Update() {
    return  Container(
      child: Column(
        children: [
          TextButton(onPressed: (){
            final user = User(
              name : controller.text,
              company: (controllerAge.text),
              duration:(controllerdate.text),
              tecnology: controllertecnology.text,
              location: controllerlocation.text,
              type: controllertype.text,
            );
            createUser(user);
            showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('Data Uploaded'),
                content: const Text('Congratulations Internship data uploaded succesfully'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Back'),
                    child: const Text('Back'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context){
                      return HomePage();
                    })),
                    child: const Text('OK'),
                  ),
                ],
              ),
            );
          }, child: const Icon(Icons.cloud_done,size: 50,),),
          const Text("Tap The Icon To Finish"),
          const Divider(color: Colors.tealAccent,)
        ],
      ),
    );
  }
  Future createUser(User user ) async {
    final docUser = FirebaseFirestore.instance.collection('users').doc();
    user.id = docUser.id;
    final json = user.toJson();
    await docUser.set(json);
  }
}
class User {
  String id;
  final String name;
  final String company;
  final String duration;
  final String tecnology;
  final String location;
  final String type;
   User ({
    this.id ='',
    required this.name,
     required this.company,
     required this.duration,
     required this.tecnology,
     required this.location,
     required this.type,
});
   Map<String, dynamic> toJson() =>
       {
         'id': id,
         'name': name,
         'company': company,
         'duration': duration,
         'technology': tecnology,
         'type':type,
       };
}












