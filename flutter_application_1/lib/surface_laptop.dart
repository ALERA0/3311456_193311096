import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/bottomNavigation.dart';
import 'package:flutter_application_1/detail.dart';
import 'package:flutter_application_1/main.dart';

class Surface_Laptop  extends StatelessWidget {
  const Surface_Laptop ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(246, 49, 115, 52),
          
          title: Text("Surface Laptop",textAlign: TextAlign.center,),
          leading:IconButton(onPressed: () {
            Navigator.pop(context);
          }, 
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.white,
            ),
            ),
          ),
           body: SafeArea(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: ListView(
                    children: [
                      Container(
                        color: const Color.fromARGB(255, 129, 115, 115),
                       child: Padding(
                         
                         padding: const EdgeInsets.all(8.0),
                         child: Container(
                           color: Color.fromARGB(255, 109, 161, 111),
                           margin: EdgeInsets.only(left: 10,top:10,bottom: 21,right: 10),
                           child:  Column(children: [
                             
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    buildRamItem(
                          text: "Microsoft Surface 2 Intel Core i5 8250U 8GB 128GB SSD Windows 10 Home 13.5 Taşınabilir Bilgisayar LQL-00008",
                          photoUrl: "Surface_Laptop/surface1.png", 
                          fiyat: "16.999,00 TL",
                          context: context,
                          screenWidth: screenWidth),
                          //SizedBox(width: 3,),
                           buildRamItem(
                          text: "Microsoft Surface Pro 8-Core I7-1185G7-16GB Ram-256GB SSD-Windows 11-13” -Dizüstü Bilgisayar-8PV-00001",
                          photoUrl: "Surface_Laptop/surface2.png", 
                          fiyat: "33.448,00 TL",
                          screenWidth: screenWidth),
                                  ],
                                ),
                                SizedBox(height: 30,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [ buildRamItem(
                          text: "Microsoft Surface Laptop Go 12.4″ Intel Core I5-1035G1 Intel UHD Graphics 8gb Ram 128GB SSD Wın-11 Taşınabilir Bilgisayar Sandstone THH-00035",
                          photoUrl: "Surface_Laptop/surface3.png", 
                          fiyat: "15.300,00 TL",
                          screenWidth: screenWidth),
                          //SizedBox(width: 3,),
                           buildRamItem(
                          text: "Lenovo Ideapad 1 14IGL05 Intel Celeron N4020 4GB 128GB SSD Windows 10 Home 14'' Taşınabilir Bilgisayar 81VU00B5TX",
                          photoUrl: "Surface_Laptop/surface4.png", 
                          fiyat: "3.948,00 TL",
                          screenWidth: screenWidth),
                          ],
                          ),

                          const SizedBox(height: 30,),

                          Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    buildRamItem(
                          text: "HP 15-DA2033NT Intel Core i5 10210U 4GB 256GB SSD Windows 10 Home 15.6 Taşınabilir Bilgisayar 9HN16EA",
                          photoUrl: "Surface_Laptop/surface5.png", 
                          fiyat: "6.998,00 TL",
                          screenWidth: screenWidth),
                          
                           buildRamItem(
                          text: "HP Intel Core I5 1135G7 8gb Ram 256 GB SSD 15.6'' Fhd Windows 11 Home Taşınabilir Bilgisayar 4H251EA",
                          photoUrl: "Surface_Laptop/surface6.png", 
                          fiyat: "8.699,00 TL",
                          screenWidth: screenWidth),
                                  ],
                                ),

                                const SizedBox(height: 30,),

                               
                           ],),
                      
                          
                         ),
                       ),

                      ),
                    ],
                  ),
                ),
                bottomNavigationBar()
              ],
            ),
          ),
           
          ),
    );
  }
}


Widget buildRamItem({
  required String text,
   required String photoUrl, 
   required String fiyat,
   required double screenWidth,context}){

  return  Container(
    height: 300,
    
    margin: EdgeInsets.only(right: 5,left: 5,top: 5,bottom: 5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(6),
    color: Colors.white,),
    

    width: (screenWidth-60) * 0.5,
    //padding: const EdgeInsets.only(left: 12,top: 12,bottom: 21,right: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                 Center(child:Image.asset(photoUrl,scale: 5,),),

                  
                  const SizedBox(height: 22,),
                  

                  Center(
                    child: Text(text,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(246, 49, 115, 52)),),
                  ),
                  SizedBox(height: 20,),
                Center(child:Text(
                  fiyat,style: const TextStyle(
                    fontSize: 18,
                      color: Color.fromARGB(246, 6, 199, 16),
                      fontWeight: FontWeight.bold 
                      ),
                      ),  )
                  

                 
                ],
              ),
            );
}