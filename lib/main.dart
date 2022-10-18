import 'package:flutter/material.dart';
import 'package:recb/widgets/themes.dart';
import 'pages/loginpage.dart';
import 'pages/homepage.dart';
import 'utills/routes.dart';
import 'widgets/drawer.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      themeMode: ThemeMode.dark,
        theme: MyTheme.lighttheme,
      darkTheme: MyTheme.darktheme,
      debugShowCheckedModeBanner: false,
            initialRoute: MyRoutes.homeRoutes,
            routes: {
              "/":(context)=> HomePage(),
              MyRoutes.homeRoutes:(context)=> HomePage(),
              MyRoutes.loginRoutes:(context)=> Loginpage()


    },
    ) ;
    

  }


}







