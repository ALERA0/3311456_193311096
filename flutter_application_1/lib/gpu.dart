import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/bottomNavigation.dart';

class GPU extends StatelessWidget {
  const GPU({Key? key}) : super(key: key);

 @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: Scaffold(
       
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(246, 49, 115, 52),
          title: const Text("GPU",
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
          body:SafeArea(
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
                          text: "Gigabyte GBT RTX3050 8GB Gaming OC GV-N3050GAMING OC-8GD",
                          photoUrl: "GPU/gpu1.png", 
                          fiyat: "6.765,64TL",
                          screenWidth: screenWidth),
                          //SizedBox(width: 3,),
                           buildRamItem(
                          text: "GeForce RTX 3090 VENTUS 3X 24G OC",
                          photoUrl: "GPU/gpu2.png", 
                          fiyat: "42.407,67TL",
                          screenWidth: screenWidth),
                                  ],
                                ),
                                SizedBox(height: 30,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [ buildRamItem(
                          text: "MSI VGA GEFORCE RTX 3060 TI GAMING X 8G LHR RTX3060TI 8GB GDDR6 256B DX12 PCIE 4.0 X16 (3XDP 1XHDMI)",
                          photoUrl: "GPU/gpu3.png", 
                          fiyat: "13.215,79TL",
                          screenWidth: screenWidth),
                          //SizedBox(width: 3,),
                           buildRamItem(
                          text: "Gigabyte 1660 Super 6G GV-N166SOC-6GD GTX 192 Bit GDDR6 6 GB Ekran Kartı",
                          photoUrl: "GPU/gpu4.png", 
                          fiyat: "8.599,00TL",
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