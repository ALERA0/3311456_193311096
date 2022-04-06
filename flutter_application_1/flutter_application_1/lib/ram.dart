import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/bottomNavigation.dart';
import 'package:flutter_application_1/detail.dart';
import 'package:flutter_application_1/main.dart';

class Ram extends StatelessWidget {
  const Ram ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold( 
      
       
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(246, 49, 115, 52),
          title: Text("Ram",textAlign: TextAlign.center,),
          leading: IconButton(
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
                         
                         padding:  EdgeInsets.only(left: 10,top:10,bottom: 21,right: 10),
                         child: Container(
                           color: Color.fromARGB(255, 109, 161, 111),
                           margin: EdgeInsets.only(left: 10,top:10,bottom: 21,right: 10),
                           child:  Column(children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    buildRamItem(
                          text: "Corsair Vengeance 16 GB 2x8GB DDR4 3000Mhz Ram (Bellek) ",
                          photoUrl: "Ram/ram1.png", 
                          fiyat: "00000000",
                          
                          screenWidth: screenWidth),
                          //SizedBox(width: 3,),
                           buildRamItem(
                          text: "XPG Spectrix D50 RGB AX4U32008G16A-DW50 16GB (2x8GB) DDR4 3200MHz CL16 Gaming (Oyuncu) Ram",
                          photoUrl: "Ram/ram2.png",
                          fiyat: "00000000", 
                         
                          screenWidth: screenWidth),
                                  ],
                                ),
                                SizedBox(height: 30,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [ buildRamItem(
                          text: "Kingston ValueRAM KVR26N19S8/16 16GB (1x16GB) DDR4 2666MHz CL19 Ram (Bellek)",
                          photoUrl: "Ram/ram3.png", 
                          fiyat: "00000000",
                          
                          screenWidth: screenWidth),
                          //SizedBox(width: 3,),
                           buildRamItem(
                          text: "Silicon Power XPower Turbine SP008GXLZU320BSA 8GB (1x8GB) DDR4 3200MHz CL16 Gaming (Oyuncu) Ram",
                          photoUrl: "Ram/ram4.png", 
                          fiyat: "00000000",
                          
                          screenWidth: screenWidth, ),
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
                
              ]
              
            ),
          ),
           
          
     
    );
  }
}
Widget buildRamItem({
  required String text,
   required String photoUrl, 
    required String fiyat,
   required double screenWidth,}){

  return Container(
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