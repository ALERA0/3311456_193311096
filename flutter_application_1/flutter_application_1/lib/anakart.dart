import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/bottomNavigation.dart';

class Anakart extends StatelessWidget {
  const Anakart({Key? key}) : super(key: key);

 @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: Scaffold(
       
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(246, 49, 115, 52),
          title: const Text("Anakart",
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
                       child: Container(
                         color: Color.fromARGB(255, 109, 161, 111),
                         margin: EdgeInsets.only(left: 10,top:10,bottom: 21,right: 10),
                         child:  Column(children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  buildAnakartItem(
                        text: "Gigabyte B450M S2H AMD B450 Soket AM4 DDR4 3600(O.C.)Mhz mATX Anakart",
                        photoUrl: "Anakart/anakart1.png", 
                        fiyat: "00000000",
                        screenWidth: screenWidth),
                        //SizedBox(width: 3,),
                         buildAnakartItem(
                        text: "Msi Mag B550 Tomahawk Amd Am4 Ddr4 M.2 Usb 3.2 Gen 2 Hdmi Atx Oyun Anakartı",
                        photoUrl: "Anakart/anakart2.png", 
                        fiyat: "00000000",
                        screenWidth: screenWidth),
                                ],
                              ),
                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [ buildAnakartItem(
                        text: "MSI MAG Z590 TOMAHAWK WIFI 3200 DDR4 LGA1200 ATX M2x3 USB 3.2x4 ANAKART",
                        photoUrl: "Anakart/anakart3.png", 
                        fiyat: "00000000",
                        screenWidth: screenWidth),
                        //SizedBox(width: 3,),
                         buildAnakartItem(
                        text: "ASUS Prime B550M-K AMD B550 Am4 DDR4 4400 Hdmı Dvı Vga Çift M2 Usb3.2 mATX Pcıe 4.0 ecc ram desteği",
                        photoUrl: "Anakart/anakart4.png", 
                        fiyat: "00000000",
                        screenWidth: screenWidth),
                        ],
                        ),

                        const SizedBox(height: 30,),

                        
                         ],),
                      
                        
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

Widget buildAnakartItem({
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