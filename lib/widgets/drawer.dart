// TODO Implement this library.import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTc5OTk2ODUyMTMxNzM0ODcy/gettyimages-1229892983-square.jpg";
    return Drawer(
         
        child: Container(
          decoration: BoxDecoration(
          color: Colors.white,
          ),
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                 padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName:Text("Dharshini R",
                   style: TextStyle(
                     color: Colors.white,
                   ),), 
                  accountEmail: Text("digupwithdharsh@gmail.com",
                  style: TextStyle(
                    color: Colors.white,
                  
                  ),),
                  currentAccountPicture: CircleAvatar(backgroundImage:NetworkImage(imageUrl),),
                 ),
              ),

              ListTile(
                 leading: Icon(CupertinoIcons.home,
                 color: Colors.black),
                title: Text("home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  //fontSize: 25,
                  color: Colors.black,
                ),),

              ),
              ListTile(
                 leading: Icon(CupertinoIcons.profile_circled,
                 color: Colors.black),
                title: Text("Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  //fontSize: 25,
                  color: Colors.black,
                ),),

              ),
                ListTile(
                 leading: Icon(CupertinoIcons.collections,
                 color: Colors.black),
                title: Text("Collections",
                textScaleFactor: 1.2,
                style: TextStyle(
                  //fontSize: 25,
                  color: Colors.black,
                ),),

              ),
              ListTile(
                 leading: Icon(CupertinoIcons.phone_circle,
                 color: Colors.black),
                title: Text("Contact",
                textScaleFactor: 1.2,
                style: TextStyle(
                  //fontSize: 25,
                  color: Colors.black,
                ),),

              ),
              ListTile(
                 leading: Icon(CupertinoIcons.cart,
                 color: Colors.black),
                title: Text("Go to Cart",
                textScaleFactor: 1.2,
                style: TextStyle(
                  //fontSize: 25,
                  color: Colors.black,
                ),),

              ),

            ],
          ),
        ), 




    );
  }
}