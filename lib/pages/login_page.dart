
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test1/utils/routes.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';



 class LoginPage extends StatefulWidget {



  @override
  State<LoginPage> createState() => _LoginPageState();
}



class _LoginPageState extends State<LoginPage> {
   String name = "";
   bool ChangeButton = false;


   final _formkey = GlobalKey<FormState>();


 moveToHome(BuildContext context)async {
   if(_formkey.currentState!.validate()){
     
         setState(() {
                        ChangeButton = true;
                      });
      
                      await Future.delayed(Duration(seconds: 1));
                      await  Navigator.pushNamed(context, MyRoutes.homeRoute);


                      
                      setState(() {
                        ChangeButton = false;
                      });


 }}
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
      child: Form(
        key: _formkey,
      
        child: Column(
          children: [
            Image.asset("assets/images/undraw_unlock_24mb.png", 
            fit: BoxFit.cover,
            height: 300,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text("Welcome $name",
             style: TextStyle(
               fontSize: 25,
               fontWeight: FontWeight.bold,
             ),
            
            ),
            SizedBox(
              height: 20.0,
            ),
             Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0,),
              child: Column(
                children: [
                  Container(
                    height: 65,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.deepPurple[200],
                    ),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      decoration: 
                         InputDecoration(
                           border: InputBorder.none,
                           focusedBorder: OutlineInputBorder(
                             borderSide: BorderSide(
                               color: Colors.deepPurple, width: 3.0),
                               borderRadius: BorderRadius.all(Radius.circular(35))
                                ),
                           
                           hintText: "Enter a Username",
                           hintStyle: TextStyle(
                             color: Colors.white,
                           ),
                           
                           labelText: "Username",
                           labelStyle: TextStyle(
                             color: Colors.black,
                           )
                          
                         ),
                         validator: (value){

                           if (value!.isEmpty){
                             return "Username cannot be empty";
                           }

                           return null;
                         },
                         onChanged: (value){
                           name = value;
                           setState(() {
                             
                           });
                         },


                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    width:400,
                    height:65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Colors.deepPurple[200],
                    ),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      obscureText: true,
                      decoration: 
                         InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.deepPurple , width: 3.0,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(35))
      
                          ),
                          border: InputBorder.none,
                           hintText: "Enter a Passcode",
                           hintStyle: TextStyle(
                             color: Colors.white,
                             
                           ),
                            
                           labelText: "Password",
                           labelStyle: TextStyle(
                             color: Colors.black,
                           ),
                           
                         ),

                          validator: (value){

                           if (value!.isEmpty){
                             return "Password cannot be empty";
                           } else if(value.length < 6){
                            return "Password should contain atleast 6 characters";
 
                           }

                           return null;
                         },
                    ),
                  ),
                
                  SizedBox(
                    height:20,
                  ),
                  //  RaisedButton(
                      
      
                    //  onPressed: ()async{
                      // Navigator.pushNamed(context, MyRoutes.homeRoute);
                      //},
                    //child: Text("forgot Password?"),),
                 
      
                  InkWell(
                    onTap: () => moveToHome(context),
      
                    child: AnimatedContainer(
                     
                      duration: Duration(seconds: 1),
                      height: 50,
                      width: ChangeButton ? 50 : 150,
                      alignment: Alignment.center,
                      child: ChangeButton ? Icon(
                        Icons.done,
                        color: Colors.white,
                      )
                      
                      : Text("Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(26),
                        
                  
                      ),
                    ),
                  ),
                //  ElevatedButton(
                    
                //    child: Text("Login"),
                //    style: TextButton.styleFrom(
                 //     minimumSize: Size(150, 40)
                 //   ),
                 //   onPressed: (){
                 //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //  },
                      
                 // ),
      
      
                  SizedBox(
      
                    height: 25.0,
                   
                  ),
      
                  const Divider(
                    height: 20,
                    thickness: 2,
                    indent: 25,
                    endIndent: 25,
            ),
              Container(
      
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //Icon(
                      // Icons.facebook_rounded,
                       //size: 35,
                     //),
                     //Image.asset('assets/images/instagram.png',
                     //height: 34,),
                     //Image.asset('assets/images/apple.png',height: 34,),
                     //Image.asset('assets/images/github.png',height: 34),
                     //Image.asset('assets/images/google.png',height: 34),
                     //Image.asset('assets/images/twitter.png',height: 34),
                     //Image.asset('assets/images/mail.png',height: 34),
                    IconButton(icon: Image.asset('assets/images/facebook.png',
                           height: 34,),
                            onPressed: ()async {
                                  const url = "https://www.facebook.com/profile.php?id=100072447608807";
                              if (await canLaunch(url)){
                                await launch(url);
                              }
                              else{
                                throw 'Could not launch $url';
                              }
                            },
                           
                          ),
                       IconButton(icon: Image.asset("assets/images/twitter.png",
                       height: 34),
                       onPressed: ()async {
                         const url = "https://twitter.com/UNEARTHED_D";
                         if (await canLaunch(url)){
                               await launch(url);
                              }
                          else {
                            throw 'Could not launch $url';
                          }
                       },),
      
                                             IconButton(onPressed:()async{
                            const url = "https://www.apple.com/in/";
                            if(await canLaunch(url)){
                              await launch(url);
                            }
                            else{
                              throw 'Could not launch $url';
                            }
                          }, icon: Image.asset("assets/images/apple.png",
                          height:34,),
                          ),
      
                     
                     
                     IconButton(icon: Image.asset("assets/images/github.png",
                     height: 34),
                     onPressed: () async {
                       const url = 'https://github.com/dharshini78';
                       if ( await canLaunch(url)){
                        await launch(url);
                       }
                      else {
                       throw 'Could not launch $url';
                       }
                       },),
      
                       IconButton(icon: Image.asset("assets/images/instagram.png",
                          height: 34,),
                          onPressed:() async{
                            const url = "https://www.instagram.com/unearthed_dd/";
                            if (await canLaunch(url)){
                              await launch(url);
                            }
                            else{
                              throw 'Could not launch $url';
                            }
                          },),
      
      
      
                  ] ),
                    ),
                        ],
                      ),
                    ),
                    ],
                ),
      ),),
            );
              
          }
 }