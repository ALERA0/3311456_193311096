import 'package:flutter/material.dart';
import 'package:flutter_application_1/anakart.dart';
import 'package:flutter_application_1/components/bottomNavigation.dart';
import 'package:flutter_application_1/cpu.dart';
import 'package:flutter_application_1/gpu.dart';
import 'package:flutter_application_1/kasa.dart';
import 'package:flutter_application_1/ram.dart';


class Masaustu extends StatelessWidget {
  const Masaustu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home:Scaffold(
          appBar: AppBar(
            title: Text("Desktop PC Build Guide",textAlign: TextAlign.center,),
            backgroundColor: Color.fromARGB(246, 49, 115, 52),
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
                child: Container(
                  width: double.infinity,

                  color: Color.fromARGB(255, 129, 115, 115),

                  child: Container(
                    decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                              color: Color.fromARGB(255, 109, 161, 111) ,
                              offset: Offset(
                                0.0,
                                15.0,
                              ),
                              blurRadius: 20.0,
                              spreadRadius: 2.0,
                            ), 
                          
                          ],
                    color:Color.fromARGB(255, 130, 187, 132) ,

                     
                    //border: Border.all(),

                    borderRadius: BorderRadius.all(Radius.circular(20),
                  )
                  ),
 
                 
                  margin: EdgeInsets.only(right: 50,left: 50,top:20,bottom: 75),
                  
                    child: Column(
                      
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Container(
                      
                      decoration: BoxDecoration(
                      
                    boxShadow: const [
                      BoxShadow(
                              color: const Color.fromARGB(246, 49, 115, 52),
                              offset: Offset(
                                -2.0,
                                -2.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ), 
                           
                          ],
                        
                          borderRadius: BorderRadius.circular(50),
                          border: const Border(
                            bottom: BorderSide(color: Colors.black,),
                            top: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black),
                            right: BorderSide(color: Colors.black),
                          ) ),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {

                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const  Ram()));
                           
                        },
                        
                        color: const Color.fromARGB(246, 49, 115, 52),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          
                          
                        ),
                        
                        child: const Text(
                          "Ram",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),
                    Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Container(
                      
                      decoration: BoxDecoration(
                      
                    boxShadow: const [
                      BoxShadow(
                              color: const Color.fromARGB(246, 49, 115, 52),
                              offset: Offset(
                                -2.0,
                                -2.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ), 
                           
                          ],
                        
                          borderRadius: BorderRadius.circular(50),
                          border: const Border(
                            bottom: BorderSide(color: Colors.black,),
                            top: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black),
                            right: BorderSide(color: Colors.black),
                          ) ),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {

                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const CPU()));
                           
                        },
                        
                        color: const Color.fromARGB(246, 49, 115, 52),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          
                          
                        ),
                        
                        child: const Text(
                          "CPU",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),
                    Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Container(
                      
                      decoration: BoxDecoration(
                      
                    boxShadow: const [
                      BoxShadow(
                              color: const Color.fromARGB(246, 49, 115, 52),
                              offset: Offset(
                                -2.0,
                                -2.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ), 
                           
                          ],
                        
                          borderRadius: BorderRadius.circular(50),
                          border: const Border(
                            bottom: BorderSide(color: Colors.black,),
                            top: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black),
                            right: BorderSide(color: Colors.black),
                          ) ),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {

                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const  GPU()));
                           
                        },
                        
                        color: const Color.fromARGB(246, 49, 115, 52),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          
                          
                        ),
                        
                        child: const Text(
                          "GPU",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),
                    Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Container(
                      
                      decoration: BoxDecoration(
                      
                    boxShadow: const [
                      BoxShadow(
                              color: const Color.fromARGB(246, 49, 115, 52),
                              offset: Offset(
                                -2.0,
                                -2.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ), 
                           
                          ],
                        
                          borderRadius: BorderRadius.circular(50),
                          border: const Border(
                            bottom: BorderSide(color: Colors.black,),
                            top: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black),
                            right: BorderSide(color: Colors.black),
                          ) ),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {

                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const Anakart() ));
                           
                        },
                        
                        color: const Color.fromARGB(246, 49, 115, 52),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          
                          
                        ),
                        
                        child: const Text(
                          "Anakart",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),
                    Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Container(
                      
                      decoration: BoxDecoration(
                      
                    boxShadow: const [
                      BoxShadow(
                              color: const Color.fromARGB(246, 49, 115, 52),
                              offset: Offset(
                                -2.0,
                                -2.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ), 
                           
                          ],
                        
                          borderRadius: BorderRadius.circular(50),
                          border: const Border(
                            bottom: BorderSide(color: Colors.black,),
                            top: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black),
                            right: BorderSide(color: Colors.black),
                          ) ),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {

                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const Kasa() ));
                           
                        },
                        
                        color: const Color.fromARGB(246, 49, 115, 52),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          
                          
                        ),
                        
                        child: const Text(
                          "Kasa",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),
                   
                    
                    ],
      ),
                  ),
                ),
              ),
              bottomNavigationBar()
            ],
          ),
        ),
      )

    );
    
  }
}