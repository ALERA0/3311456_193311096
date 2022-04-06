import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/bottomNavigation.dart';

class Gaming_Laptop extends StatelessWidget {
  const Gaming_Laptop({Key? key}) : super(key: key);
@override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(246, 49, 115, 52),
          title: const Text("Gaming Laptop",
          textAlign: TextAlign.center,),
          leading:IconButton(
            onPressed: () {

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
                         
                         padding: const EdgeInsets.all(0.0),
                         child: Container(
                           color: Color.fromARGB(255, 109, 161, 111),
                           margin: EdgeInsets.only(left: 30,top:10,bottom: 50,right: 30),
                           child:  Column(children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    buildRamItem(
                          text: "Asus ROG Zephyrus GA401QE-K2203 AMD Ryzen 7 5800HS 16GB 1TB SSD RTX3050Ti Freedos 14 WQHD Taşınabilir Bilgisayar",
                          photoUrl: "Gaming_Laptop/gaming1.png", 
                          fiyat: "00000000",
                          screenWidth: screenWidth),
                          //SizedBox(width: 3,),
                           buildRamItem(
                          text: "Monster Abra A5 V16.7.3 Intel Core I5 11400H 16GB 500GB SSD GTX1650 Freedos 15.6'' FHD Taşınabilir Bilgisayar",
                          photoUrl: "Gaming_Laptop/gaming2.png", 
                          fiyat: "00000000",
                          screenWidth: screenWidth),
                                  ],
                                ),
                                SizedBox(height: 30,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [ buildRamItem(
                          text: "Lenovo IdeaPad Gaming 3 AMD Ryzen 5 5600H 8GB 512GB SSD GTX1650 Freedos 15.6 FHD Taşınabilir Bilgisayar 82K200K3TX",
                          photoUrl: "Gaming_Laptop/gaming3.png", 
                          fiyat: "00000000",
                          screenWidth: screenWidth),
                          //SizedBox(width: 3,),
                           buildRamItem(
                          text: "Asus ROG Strix G513QM-HQ358 AMD Ryzen 9 5900HX 16GB 1 TB SSD RTX3060 Freedos 15.6 WQHD Taşınabilir Bilgisayar",
                          photoUrl: "Gaming_Laptop/gaming4.png", 
                          fiyat: "00000000",
                          screenWidth: screenWidth),
                          ],
                          ),

                          const SizedBox(height: 30,),

                          Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    buildRamItem(
                          text: "Casper Excalibur G900.1180-BV70X-B Intel Core i7 11800H 16GB 500GB SSD RTX3070 Freedos 15.6 FHD Taşınabilir Bilgisayar",
                          photoUrl: "Gaming_Laptop/gaming5.png", 
                          fiyat: "00000000",
                          screenWidth: screenWidth),
                          
                           buildRamItem(
                          text: "MSI GF63 Thin 11SC-035XTR Intel Core i5 11400H 8GB 512GB SSD GTX1650 Freedos 15.6 FHD Taşınabilir Bilgisayar",
                          photoUrl: "Gaming_Laptop/gaming6.png", 
                          fiyat: "00000000",
                          screenWidth: screenWidth),
                                  ],
                                ),

                                const SizedBox(height: 30,),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [ buildRamItem(
                          text: "Dell Gaming G15 5511 Intel Core i7 11800H 16GB 512GB SSD RTX3050 Ti 15.6 FHD Linux Taşınabilir Bilgisayar FB1180F165C",
                          photoUrl: "Gaming_Laptop/gaming7.png", 
                          fiyat: "00000000",
                          screenWidth: screenWidth),
                          
                           buildRamItem(
                          text: "HP Victus 16-E0012NT Amd Ryzen 5 5600H 8GB 256GB GTX1650 Freedos 16.1 FHD Taşınabilir Bilgisayar 4H0S3EA",
                          photoUrl: "Gaming_Laptop/gaming8.png", 
                          fiyat: "00000000",
                          screenWidth: screenWidth),
                          ],)
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
   required double screenWidth}){

  return   Container(
    height: 300,
    
    
    
    margin: EdgeInsets.only(right: 5,left: 5,top: 5,bottom:5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(6),
    color: Colors.white,),
    

    width: (screenWidth-60) * 0.4,
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