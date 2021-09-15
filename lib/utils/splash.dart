import 'dart:async';


import 'package:flutter/material.dart';
import 'package:test1/pages/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   @override
   void initState () {
super.initState();
      Timer(Duration(seconds: 3),
         ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage(),),),
        );
   }

  
     
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
            ),
            
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  
                  child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     

                     children: [
                       Image.asset('assets/images/maple-leaf.png',
                       color: Colors.white,
                       ),
                       SizedBox(
                         width: 16.0,
                       ),
                       Text("M A P L E",
                      
                       style: TextStyle(
                         color: Colors.white,
                        fontWeight: FontWeight.bold,
                         fontSize: 30,  
                       ),),
                       
                       
                     ],   
                  ),
                ),
              )
            ],
              
            
          ),
        ],
      ),
    );
  }
}