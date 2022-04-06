import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/bottomNavigation.dart';

class Mackbook  extends StatelessWidget {
  const Mackbook ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(246, 49, 115, 52),
          
          title: Text("Mackbook",textAlign: TextAlign.center,),
          leading:IconButton(onPressed: () {
            Navigator.pop(context);
          }, 
          icon: Icon(
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
                          text: "MacBook Air 13.3 inc M1 8CPU 7GPU 8GB 256GB Uzay Grisi MGN63TU/A",
                          photoUrl: "Mackbook/mackbook1.png", 
                          fiyat: "00000000",
                          screenWidth: screenWidth),
                          //SizedBox(width: 3,),
                           buildRamItem(
                          text: "MacBook Pro 13.3 inc M1 8CPU 8GPU 8GB 256GB Gümüş MYDA2TU/A",
                          photoUrl: "Mackbook/mackbook2.png", 
                          fiyat: "00000000",
                          screenWidth: screenWidth),
                                  ],
                                ),
                                SizedBox(height: 20,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [ buildRamItem(
                          text: "MacBook Pro 14 inc M1 Max 10CPU 32GPU 64GB 2TB Uzay Grisi Z15H000KZ",
                          photoUrl: "Mackbook/mackbook3.png", 
                          fiyat: "00000000",
                          screenWidth: screenWidth),
                          
                          //SizedBox(width: 3,),
                           buildRamItem(
                          text: "MacBook Pro 16 inc M1 Pro 10CPU 16GPU 16GB 512GB Uzay Grisi MK183TU/A",
                          photoUrl: "Mackbook/mackbook4.png", 
                          fiyat: "00000000",
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