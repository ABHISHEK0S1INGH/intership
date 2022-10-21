import 'package:flutter/material.dart';
import 'package:recb/widgets/themes.dart';
import 'pages/loginpage.dart';
import 'pages/homepage.dart';
import 'utills/routes.dart';
import 'widgets/drawer.dart';
import 'pages/myprofilepage.dart';
import 'pages/aboutpage.dart';
import 'pages/helppage.dart';
import 'pages/opportunitypage.dart';
import 'pages/searchpage.dart';
import 'pages/settingpage.dart';
import 'pages/updateprofilepage.dart';
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
           initialRoute: '/home',
            routes: {
              "/":(context)=> const Loginpage(),
            //  "/about":(context) => const Aboutpage(),
              '/setting':(context) =>  const Settingpage(),
             // '/drawer':(context) => const MyDrawer(),
             '/home':(context)=> const HomePage(),
             // MyRoutes.loginRoutes:(context)=> const Loginpage(),
             // MyRoutes.MyProfileRoutes:(context)=>const MyProfile(),
             // MyRoutes.HelpRoutes:(context)=> const Helppage(),
              '/opportunity':(context)=>const Opportunitypage(),
            '/search':(context)=>const Searchpage(),
             // MyRoutes.updateprofileRoutes:(context)=>const Updateprofile(),
    },
    ) ;
    

  }


}







