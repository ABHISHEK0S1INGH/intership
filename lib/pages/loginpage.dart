import 'package:flutter/material.dart';
import 'package:recb/utills/routes.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = "";
  bool changebutton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });
      Navigator.pushNamed(context, MyRoutes.homeRoutes);
    }
    setState(() {
      changebutton = false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.teal,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  'images/rec.jpeg',
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Welcome $name",
                  style: const TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Enter user name",
                          labelText: "User name",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username cannot be empty ";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24.0),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password can't be empty ";
                      } else if (value.length < 6) {
                        return "Password should be at least 6 character ";
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 30.0),
                InkWell(
                  onTap: () => moveToHome(context), //{
                  //Navigator.pushNamed(context, MyRoutes.homeRoutes);
                  //}
                  child: AnimatedContainer(
                    color: Colors.blue,
                    duration: const Duration(seconds: 1),
                    width: changebutton ? 50 : 150,
                    height: 40,
                    alignment: Alignment.center,
                    child: changebutton
                        ? const Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : const Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
