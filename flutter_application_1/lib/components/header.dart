import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget Header(String title,context){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      
      SizedBox(height: 29,),

      GestureDetector(
        onTap: () {
          Navigator.pop(context);
          
        },
        
       /*  child: Icon(Icons.arrow_back,
        color: Colors.white,
        size: 20,), */
        ),

        SizedBox(height: 24,),
        Text(title,
        style: TextStyle(fontWeight: FontWeight.bold,
        fontSize: 14,
        color: Colors.black
        ),)
    ],
  );
}