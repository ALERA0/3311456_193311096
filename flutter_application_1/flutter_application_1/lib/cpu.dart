import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/bottomNavigation.dart';

class CPU extends StatelessWidget {
  const CPU({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: Scaffold(
       
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(246, 49, 115, 52),
          title: const Text("CPU",
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
                          text: "Intel Core i9-12900K 3.2 GHz LGA1700 30 MB Cache 125 W İşlemci",
                          photoUrl: "CPU/cpu1.png", 
                          fiyat: "00000000",
                          screenWidth: screenWidth),
                          //SizedBox(width: 3,),
                           buildRamItem(
                          text: "Amd Ryzen 5 3600 3,6 Ghz (4,2 Ghz Max.) Socket Am4 100-100000031mpk 100-100000031MPK",
                          photoUrl: "CPU/cpu2.png", 
                          fiyat: "00000000",
                          screenWidth: screenWidth),
                                  ],
                                ),
                                SizedBox(height: 30,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [ buildRamItem(
                          text: "Amd Ryzen 7 5800x 3.8ghz 36mb Am4 105w",
                          fiyat: "00000000",
                          photoUrl: "CPU/cpu3.png", 
                          screenWidth: screenWidth),
                          //SizedBox(width: 3,),
                           buildRamItem(
                          text: "Intel Core i5-12400F 12. nesil masaüstü işlemci ",
                          fiyat: "00000000",
                          photoUrl: "CPU/cpu4.png", 
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