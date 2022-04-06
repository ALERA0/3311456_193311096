import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/bottomNavigation.dart';
import 'package:flutter_application_1/main.dart';

// ignore: camel_case_types
class Sign_Page extends StatelessWidget {
  const Sign_Page({Key? key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        
        // ignore: deprecated_member_use
       
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
                  margin: EdgeInsets.only(right: 50,left: 50,top:20,bottom: 75),
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
 
                 
                  
                  
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    Column(
                      children: const <Widget>[
                        Text(
                          "Kayıt Ol",
                          style:
                              TextStyle(fontSize: 30,
                               fontWeight: FontWeight.bold),
                        ),
                        
                       
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        children: <Widget>[
                          inputFile(label: "E-Mail",),
                          inputFile(label: "Kullanıcı Adı"),
                          inputFile(label: "Şifre"),
                          inputFile(label: "Şifre tekrarı", obscureTexT: true)
                        ],
                      ),
                    ),
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
                              bottom: BorderSide(color: Colors.black),
                              top: BorderSide(color: Colors.black),
                              left: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black),
                            )),
                            child: MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {

                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MyApp() ));
                       
                    },
                    
                    color: const Color.fromARGB(246, 49, 115, 52),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      
                      
                    ),
                    
                    child: const Text(
                      "KAYIT",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                      ),
                        
                      ),
                    )
                  ],
                  ),
                ),
              ),
            ),
            bottomNavigationBar()
          ],
        ),
      ),
    );
    
  }
}

Widget inputFile({label, obscureTexT = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: const TextStyle(
            fontSize: 15, 
            fontWeight: FontWeight.w400, 
            color:  Colors.white
            ),
      ),

      const SizedBox( height: 5,),

      TextField(
        obscureText: obscureTexT,
        decoration: const InputDecoration(
          fillColor: Colors.white,
          filled: true,
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromARGB(255, 130, 187, 132),
                ),
            ),

            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
  
                borderSide: BorderSide(
                  color: Colors.black,
                  )
                ),

                focusedBorder: OutlineInputBorder(
                   borderSide:  BorderSide(
                     color: Colors.white 
                     )
                )
                ),
      ),

      const SizedBox(height: 10 )
    ],
  );
}