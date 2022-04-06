import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/header.dart';
import 'package:flutter_application_1/components/bottomNavigation.dart';

class Detail extends StatefulWidget {

  String detailtitle;
  Detail(this.detailtitle);

  @override
  _DetailState createState() => _DetailState();
}
class _DetailState extends State<Detail>{
  @override

   Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        backgroundColor: const Color.fromARGB(246, 49, 115, 52),   
          
          ),
        body: SafeArea(
          child: Stack(children: [
            Padding(
              padding: EdgeInsets.all(0.0),
            child: Container(
              margin: EdgeInsets.all(50),
              width: double.infinity,
              color: Colors.red,
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,

                children: [Container(
                  margin: EdgeInsets.all(50),
                  child:Header(widget.detailtitle, context) ,),
                  
                  

                ],

                 ),
            ),
            )
          ]),
          
        ),
          ),
    );
  }
}


  
