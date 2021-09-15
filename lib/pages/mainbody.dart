import 'package:flutter/material.dart';

class MainBody extends StatelessWidget {
  const MainBody({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
           
           alignment: Alignment.center,
           child: Image.asset('assets/images/404.png',
           height: 400,
           width: 400,),
           
        ),
        Container(
          child: Text('                       Sorry Page not Found! \n check your internet connection an try Again!',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),),
        ),
      ],
    ); 
  }
}