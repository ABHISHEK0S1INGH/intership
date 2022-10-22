import 'dart:async';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
class Updateprofile extends StatefulWidget {
  const Updateprofile({Key? key}) : super(key: key);

  @override
  State<Updateprofile> createState() => _UpdateprofileState();
}

class _UpdateprofileState extends State<Updateprofile> {
  UploadTask? task;
  File? file;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: ListView(
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
            Certificate(),
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

  Widget Certificate(){
   // final fileName = file != null ? basename(file!.path): 'No file slected';
    return Container(
      padding: const EdgeInsets.all(32),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed: (){ selectfile();}, icon: const Icon(Icons.upload),iconSize: 50.0,)
          ],
        ),
      ),
    );
  }

 Future selectfile()  async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: false);
    if (result == null) return;
    final path = result.files.single.path!;
    setState(() => file = File(path));
 }

}

 Future class UploadTask a{
}






