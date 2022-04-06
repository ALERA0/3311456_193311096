import 'package:flutter/material.dart';

Widget bottomNavigationBar(){
  return   Align(
                alignment: Alignment.bottomCenter,
                child: 
                  Container(
                    decoration: BoxDecoration(boxShadow: [BoxShadow(
                      offset: const Offset(0,-3),
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 10
                    ),
                    ],
                    color: Color.fromARGB(255, 130, 187, 132) ,
                    
                    ),
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children:  [
                        buildNavIcon(iconnData:Icons.home_filled, active: true),
                        buildNavIcon(iconnData:Icons.search, active: false),
                        buildNavIcon(iconnData:Icons.shopping_basket, active: false),
                        buildNavIcon(iconnData:Icons.person, active: false),
                      
                      ],
                      
                    ),
                  ),
                
              );
}
Widget buildNavIcon({required IconData iconnData, required bool active, }){
  return Icon(iconnData,
  size: 25,color: active ? Color.fromARGB(246, 23, 130, 28) :Colors.black );
}