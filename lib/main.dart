import 'package:flutter/material.dart';
import 'package:test1/pages/home_page.dart';
import 'package:test1/pages/login_page.dart'; //importing package
import 'package:test1/utils/routes.dart';
import 'package:test1/widgets/themes.dart';
import 'pages/home_page.dart';
import 'package:test1/utils/splash.dart';




 
 void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget { // command to ask computer to create 
                                     //widgets which are not interacted with user.
 
  @override  
   //When a Child class redefines the method of its Parent
   //class then it is called Method Overriding. Overriding is done so that a child class
   //can give its own implementation to the method which is already provided by the parent class.

  Widget build(BuildContext context) { // summoning computer to build up widgets enclosed within this command
//codes written inside widget build are 90% widgets
   
    return MaterialApp(  //thats why we are returning everything inside this. [to give]
     // home: HomePage(), //line 18 and 30 are same, write anyone, writing both throws error [paths]
           themeMode: ThemeMode.light,
           theme: MyTheme.LightTheme(context),
           darkTheme: MyTheme.DarkTheme(context),
           debugShowCheckedModeBanner: false,
         

           initialRoute: '/',
           routes: {  //paths
             "/":(context) => SplashScreen(), //line 18 and 30 are same, write anyone, writing both throws error
              MyRoutes.homeRoute: (context) => LoginPage(),
              MyRoutes.homeRoute: (context) => HomePage(),

    
           
           },    
      );
    
  }
   
   
}
