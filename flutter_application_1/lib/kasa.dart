import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/bottomNavigation.dart';

class Kasa extends StatelessWidget {
  const Kasa({Key? key}) : super(key: key);

 @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: Scaffold(
       
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(246, 49, 115, 52),
          title: const Text("Kasa",
          textAlign: TextAlign.center,),
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
                          text: "MSI Mag Forge 100R,Temperli Cam, 2X A-Rgb Fan , 1x120 mm Fan Atx, Gaming Bilgisayar Kasası",
                          photoUrl: "Kasa/kasa1.png", 
                          fiyat: "₺1.846,35",
                          screenWidth: screenWidth),
                          //SizedBox(width: 3,),
                           buildRamItem(
                          text: "CORSAIR CC-9020130-EU SPEC-05 MID TOWER GAMING CASE + CV650 650 WATT 80 PLUS PSU",
                          photoUrl: "Kasa/kasa2.png", 
                          fiyat: "1.099,99TL",
                          screenWidth: screenWidth),
                                  ],
                                ),
                                SizedBox(height: 30,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [ buildRamItem(
                          text: "Corsair 4000D Temperli Cam Mid-Tower Bilgisayar Kasası CC-9011198-WW, Siyah",
                          photoUrl: "Kasa/kasa3.png", 
                          fiyat: "1.029,00TL",
                          screenWidth: screenWidth),
                          //SizedBox(width: 3,),
                           buildRamItem(
                          text: "GamePower Warcry 6x120mm Argb Fanlı Gaming Oyuncu Bilgisayar Kasası",
                          photoUrl: "Kasa/kasa4.png", 
                          fiyat: "1.099,99TL",
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
   required double screenWidth}){

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