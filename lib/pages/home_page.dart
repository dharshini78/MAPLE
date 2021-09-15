import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test1/models/products.dart';
import 'package:test1/pages/mainbody.dart';
import 'package:test1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MAPLE",
        style: TextStyle(
          color: Colors.black
        ),),
      ),
      drawer: MyDrawer(),
      body: Container(
        child: Column(
          children: [
            MainBody(),
          ],
        ),
      )
    );
    
  }
}

